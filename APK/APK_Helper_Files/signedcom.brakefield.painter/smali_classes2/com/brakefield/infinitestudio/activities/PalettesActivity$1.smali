.class Lcom/brakefield/infinitestudio/activities/PalettesActivity$1;
.super Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity;->bindMainContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity;

    invoke-direct {p0, p2, p3}, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public hasTabIcons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTabLabels()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
