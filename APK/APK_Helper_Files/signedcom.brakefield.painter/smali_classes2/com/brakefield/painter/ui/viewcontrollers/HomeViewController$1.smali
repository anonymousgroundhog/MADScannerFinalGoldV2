.class Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$1;
.super Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;
.source "HomeViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ZI)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-direct {p0, p2, p3}, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public hasTabIcons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasTabLabels()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
