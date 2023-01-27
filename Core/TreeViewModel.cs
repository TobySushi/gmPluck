using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace TreeView
{
    public class TreeViewModel : INotifyPropertyChanged
    {

        // treeview model constructor
        TreeViewModel(string name)
        {
            Name = name;
            Children = new List<TreeViewModel>();
        }

        #region properties
         
        public string Name { get; set; }
        public List<TreeViewModel> Children { get; private set; }
        public bool IsInitiallySelected { get; private set; }

        bool? _isChecked = false;
        TreeViewModel _parent;

        #region IsChecked

        public bool? IsChecked
        {
            get { return _isChecked; }
            set { SetIsChecked(value, true, true); }
        }

        void SetIsChecked(bool? value, bool updateChildren, bool updateParent)
        {
            if (value == _isChecked) return;

            _isChecked = value;

            // if the value of a check box changes, change each of the children to the same value as well.
            if (updateChildren && _isChecked.HasValue) Children.ForEach(c => c.SetIsChecked(_isChecked, true, false));

            if (updateParent && _parent != null) _parent.VerifyCheckedState();

            NotifyPropertyChanged("IsChecked");
        }

        void VerifyCheckedState()
        {
            bool? state = null;

            for(int i = 0; i < Children.Count; ++i) 
            {
                bool? current = Children[i].IsChecked;
                if(i == 0)
                {
                    state = current;
                } else if (state != current)
                {
                    state = null;
                    break;
                }
            }

            SetIsChecked(state, false, true);
        }

        #endregion

        #endregion

        void Initialize()
        {
            foreach (TreeViewModel child in Children)
            {
                child._parent = this;
                child.Initialize();
            }
        }

        public static List<TreeViewModel> SetTree(string topLevelName)
        {
            List<TreeViewModel> treeView = new List<TreeViewModel>();
            TreeViewModel tv = new TreeViewModel(topLevelName);

            treeView.Add(tv);

            #region test

            TreeViewModel tvChild4 = new TreeViewModel("Child4");

            tv.Children.Add(new TreeViewModel("Child1"));
            tv.Children.Add(new TreeViewModel("Child2"));
            tv.Children.Add(new TreeViewModel("Child3"));
            tv.Children.Add(tvChild4);
            tv.Children.Add(new TreeViewModel("Child5"));

            TreeViewModel grtGrdChild2 = (new TreeViewModel("GreatGrandChild4-2"));

            tvChild4.Children.Add(new TreeViewModel("GrandChild4-1"));
            tvChild4.Children.Add(grtGrdChild2);
            tvChild4.Children.Add(new TreeViewModel("GranndChild4-3"));

            grtGrdChild2.Children.Add(new TreeViewModel("GreatGrandChild4-2-1"));

            #endregion

            tv.Initialize();

            return treeView;

        }

        public static List<string> GetTree()
        {
            List<string> selected = new List<string>();

            return selected;
        }

        #region INotifyPropertyChanged

        void NotifyPropertyChanged(string info)
        {
            if(PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(info)); 
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        #endregion
    }
}
