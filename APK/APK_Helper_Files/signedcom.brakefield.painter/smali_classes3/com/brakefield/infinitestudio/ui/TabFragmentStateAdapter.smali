.class public abstract Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "TabFragmentStateAdapter.java"


# instance fields
.field final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/TabFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/TabFragment;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 16
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;->fragments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabIcon(I)I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/TabFragment;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/TabFragment;->getIcon()I

    move-result p1

    return p1
.end method

.method public getTabTitle(I)Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/TabFragment;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/TabFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract hasTabIcons()Z
.end method

.method public abstract hasTabLabels()Z
.end method
