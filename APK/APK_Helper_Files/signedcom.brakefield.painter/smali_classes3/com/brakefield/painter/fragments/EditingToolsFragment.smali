.class public Lcom/brakefield/painter/fragments/EditingToolsFragment;
.super Lcom/brakefield/painter/fragments/ToolsFragment;
.source "EditingToolsFragment.java"


# instance fields
.field private final viewController:Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/brakefield/painter/fragments/ToolsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 14
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;

    invoke-direct {p1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/fragments/EditingToolsFragment;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/brakefield/painter/fragments/EditingToolsFragment;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;

    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/EditingToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/fragments/EditingToolsFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, p1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->bind(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method public getContentId()I
    .locals 1

    const v0, 0x7f0d0080

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120132

    .line 21
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/brakefield/painter/fragments/EditingToolsFragment;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->update()V

    return-void
.end method
