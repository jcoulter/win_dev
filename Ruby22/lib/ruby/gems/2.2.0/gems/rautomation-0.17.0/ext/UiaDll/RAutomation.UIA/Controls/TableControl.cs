﻿using System.Collections.Generic;
using System.Linq;
using System.Windows.Automation;
using RAutomation.UIA.Extensions;
using RAutomation.UIA.Properties;

namespace RAutomation.UIA.Controls
{
    public class TableControl
    {
        private readonly AutomationElement _element;

        public TableControl(AutomationElement element)
        {
            _element = element;
        }

        public int RowCount
        {
            get { return _element.As<TablePattern>(TablePattern.Pattern).Current.RowCount; }
        }

        public int SelectedIndex
        {
            get { return SelectionItems.IndexOf(x => x.Current.IsSelected); }
            set { Select(value); }
        }

        public int[] SelectedIndexes
        {
            get { return DataItems.IndexesOf(x => x.AsSelectionItem().Current.IsSelected); }
        }

        public bool IsRowSelected(int dataItemIndex)
        {
            return DataItems.ElementAt(dataItemIndex).AsSelectionItem().Current.IsSelected;
        }

        public void Remove(int dataItemIndex)
        {
            DataItems.ElementAt(dataItemIndex).AsSelectionItem().RemoveFromSelection();
        }

        public void Remove(string dataItemValue)
        {
            DataItems.FirstOrDefault(x => x.Current.Name == dataItemValue).AsSelectionItem().RemoveFromSelection();
        }

        public string Value
        {
            set { Select(value); }
        }

        public bool Exists(int row, int column)
        {
            return At(row, column).Exists();
        }

        public string ValueAt(int row, int column)
        {
            return At(row, column).Current.Name;
        }

        public AutomationElement At(int row, int column)
        {
            return _element.FindOne(IsTableItem, GridItemPattern.ColumnProperty.Is(column), GridItemPattern.RowProperty.Is(row));
        }

        public string[] Headers
        {
            get { return _element.Find(ControlType.HeaderItem.Condition()).Select(x => x.Current.Name).ToArray(); }
        }

        public string[] Values
        {
            get { return TableOrListItems.Select(x => x.Current.Name).ToArray(); }
        }

        public void SingleSelect(int value)
        {
            DataItems.ElementAt(value).AsSelectionItem().Select();
        }

        private void Select(int value)
        {
            var selectionItem = DataItems.ElementAt(value).AsSelectionItem();

            if (SelectionPattern.CanSelectMultiple)
                selectionItem.AddToSelection();
            else
                selectionItem.Select();
        }

        private SelectionPattern.SelectionPatternInformation SelectionPattern
        {
            get { return _element.As<SelectionPattern>(SelectionPatternIdentifiers.Pattern).Current; }
        }

        private void Select(string value)
        {
            SelectionElements.First(x => x.Current.Name == value).AsSelectionItem().Select();
        }

        private IEnumerable<SelectionItemPattern> SelectionItems
        {
            get { return SelectionElements.Select(x => x.As<SelectionItemPattern>(SelectionItemPattern.Pattern)); }
        }

        private IEnumerable<AutomationElement> DataItems
        {
            get
            {
                return _element.Find(AutomationProperties.IsDataItem);
            }
        }

        private IEnumerable<AutomationElement> SelectionElements
        {
            get { return _element.Find(AutomationProperties.IsSelectionItem); }
        }

        private IEnumerable<AutomationElement> TableOrListItems
        {
            get { return _element.FindAny(IsTableItem, ControlType.ListItem.Condition()); }
        }

        private static Condition IsTableItem
        {
            get { return AutomationElement.IsTableItemPatternAvailableProperty.TrueCondition(); }
        }
    }
}
