.class public Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "SectionAdapterListUpdateCallback.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# instance fields
.field private final sectionAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;->sectionAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;->sectionAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;->sectionAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;->sectionAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;->sectionAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
