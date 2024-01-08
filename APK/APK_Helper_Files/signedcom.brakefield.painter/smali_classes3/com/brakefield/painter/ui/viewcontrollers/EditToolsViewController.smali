.class public Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "EditToolsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 5

    .line 77
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 82
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->scissorsButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda2;-><init>(Landroid/view/View$OnClickListener;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 85
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectRectButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda8;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 88
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectWandButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda9;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 91
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda10;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 94
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPolyButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda12;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 97
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPathButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda13;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 100
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectCircleButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda14;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 103
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectColorButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda15;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 107
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformBasicButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda16;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 110
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformAnchorButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda11;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 113
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformDistortButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda17;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 116
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformWarpButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda18;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 120
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->colorsButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda19;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 123
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->filtersButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda20;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 126
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->curvesButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda21;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda21;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 129
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->liquifyButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda22;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 133
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroSymButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda23;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda23;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 136
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroPathButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda24;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 139
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroQuiltButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 142
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroTileButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 146
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->cropButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 149
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->resizeButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda5;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 152
    iget-object v1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->straightenButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 155
    iget-object p1, p1, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->panelsButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController$$ExternalSyntheticLambda7;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v3, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$1(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 83
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$10(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 111
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$11(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 114
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$12(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 117
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$13(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 121
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$14(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 124
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$15(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 127
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$16(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 130
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$17(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 134
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$18(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 137
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$19(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 140
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$2(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 86
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$20(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 143
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$21(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 147
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$22(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 150
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$23(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 153
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$24(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 156
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$3(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 89
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$4(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 92
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$5(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 95
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$6(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 98
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$7(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 101
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$8(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 104
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$9(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 108
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateActive(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 162
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private updateCanvasItems(I)V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->cropImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 233
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->resizeImage:Landroid/widget/ImageView;

    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 234
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->straightenImage:Landroid/widget/ImageView;

    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 235
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->panelsImage:Landroid/widget/ImageView;

    const/16 v1, 0x1e

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 237
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->cropButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x192

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 238
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->resizeButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x19b

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 239
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->straightenButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x199

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 240
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->panelsButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x19c

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method

.method private updateEditItems(I)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->colorsImage:Landroid/widget/ImageView;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 207
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->filtersImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 208
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->curvesImage:Landroid/widget/ImageView;

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 209
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->liquifyImage:Landroid/widget/ImageView;

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 211
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->colorsButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x190

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 212
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->filtersButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x191

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 213
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->curvesButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x19a

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 214
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->liquifyButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x194

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method

.method private updatePatternItems(I)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroSymImage:Landroid/widget/ImageView;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 220
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroPathImage:Landroid/widget/ImageView;

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 221
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroQuiltImage:Landroid/widget/ImageView;

    const/16 v1, 0x12

    if-ne p1, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 222
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroTileImage:Landroid/widget/ImageView;

    const/16 v1, 0x13

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 224
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroSymButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x195

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 225
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroPathButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x196

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 226
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroQuiltButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x197

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 227
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroTileButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x198

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method

.method private updateSelectionItems(I)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->scissorsImage:Landroid/widget/ImageView;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 171
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectRectImage:Landroid/widget/ImageView;

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 172
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectWandImage:Landroid/widget/ImageView;

    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 173
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectBrushImage:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 174
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPolyImage:Landroid/widget/ImageView;

    const/16 v1, 0x16

    if-ne p1, v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 175
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPathImage:Landroid/widget/ImageView;

    const/16 v1, 0x17

    if-ne p1, v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 176
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectCircleImage:Landroid/widget/ImageView;

    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 177
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectColorImage:Landroid/widget/ImageView;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    invoke-direct {p0, v0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 179
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->scissorsButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x68

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 180
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectRectButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x6e

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 181
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectWandButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x70

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 182
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x71

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 183
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPolyButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x73

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 184
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPathButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x74

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 185
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectCircleButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x72

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 186
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectColorButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x131

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method

.method private updateTransformItems(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/16 v2, 0xf

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    .line 192
    :goto_1
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getTransformTool()Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->getTransformMode()I

    move-result v2

    .line 193
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformBasicImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 194
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformAnchorImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    if-ne v2, v1, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 195
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformDistortImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    invoke-direct {p0, v3, v4}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 196
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformWarpImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    if-ne v2, p1, :cond_5

    move v0, v1

    :cond_5
    invoke-direct {p0, v3, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 198
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformBasicButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 199
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformAnchorButton:Landroid/widget/FrameLayout;

    const/16 v1, 0xab

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 200
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformDistortButton:Landroid/widget/FrameLayout;

    const/16 v1, 0xac

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 201
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformWarpButton:Landroid/widget/FrameLayout;

    const/16 v1, 0xad

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 23
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 24
    invoke-static {p2}, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    .line 26
    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->scissorsButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->scissorsImage:Landroid/widget/ImageView;

    const/16 v1, 0x68

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 27
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectRectButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectRectImage:Landroid/widget/ImageView;

    const/16 v1, 0x6e

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 28
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectWandButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectWandImage:Landroid/widget/ImageView;

    const/16 v1, 0x70

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 29
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectBrushImage:Landroid/widget/ImageView;

    const/16 v1, 0x71

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 31
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPolyButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPolyImage:Landroid/widget/ImageView;

    const/16 v1, 0x73

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 32
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPathButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectPathImage:Landroid/widget/ImageView;

    const/16 v1, 0x74

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 33
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectCircleButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectCircleImage:Landroid/widget/ImageView;

    const/16 v1, 0x72

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 34
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectColorButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->selectColorImage:Landroid/widget/ImageView;

    const/16 v1, 0x131

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 37
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformBasicButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformBasicImage:Landroid/widget/ImageView;

    const/16 v1, 0xaa

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 38
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformAnchorButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformAnchorImage:Landroid/widget/ImageView;

    const/16 v1, 0xab

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 39
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformDistortButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformDistortImage:Landroid/widget/ImageView;

    const/16 v1, 0xac

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 40
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformWarpButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->transformWarpImage:Landroid/widget/ImageView;

    const/16 v1, 0xad

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 42
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->colorsButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->colorsImage:Landroid/widget/ImageView;

    const/16 v1, 0x190

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 43
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->filtersButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->filtersImage:Landroid/widget/ImageView;

    const/16 v1, 0x191

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 44
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->curvesButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->curvesImage:Landroid/widget/ImageView;

    const/16 v1, 0x19a

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 45
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->liquifyButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->liquifyImage:Landroid/widget/ImageView;

    const/16 v1, 0x194

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 47
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroSymButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroSymImage:Landroid/widget/ImageView;

    const/16 v1, 0x195

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 48
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroPathButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroPathImage:Landroid/widget/ImageView;

    const/16 v1, 0x196

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 49
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroQuiltButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroQuiltImage:Landroid/widget/ImageView;

    const/16 v1, 0x197

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 50
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroTileButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->maestroTileImage:Landroid/widget/ImageView;

    const/16 v1, 0x198

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 52
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->cropButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->cropImage:Landroid/widget/ImageView;

    const/16 v1, 0x192

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 53
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->resizeButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->resizeImage:Landroid/widget/ImageView;

    const/16 v1, 0x19b

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 54
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->straightenButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->straightenImage:Landroid/widget/ImageView;

    const/16 v1, 0x199

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 55
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->panelsButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;->panelsImage:Landroid/widget/ImageView;

    const/16 v1, 0x19c

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 57
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->update()V

    .line 59
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    invoke-direct {p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->bindUI(Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->binding:Lcom/brakefield/painter/databinding/EditToolsViewControllerBinding;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    .line 68
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateSelectionItems(I)V

    .line 69
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateTransformItems(I)V

    .line 70
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateEditItems(I)V

    .line 71
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updatePatternItems(I)V

    .line 72
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/EditToolsViewController;->updateCanvasItems(I)V

    return-void
.end method
