.class Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

.field final synthetic val$this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper$1;->val$this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
