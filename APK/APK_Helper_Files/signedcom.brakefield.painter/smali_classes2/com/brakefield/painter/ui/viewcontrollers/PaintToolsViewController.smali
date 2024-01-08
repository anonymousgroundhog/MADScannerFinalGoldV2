.class public Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "PaintToolsViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 5

    .line 96
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 101
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda2;-><init>(Landroid/view/View$OnClickListener;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 104
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillGradientButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda12;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 107
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillPatternButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda13;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 112
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLinearButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda14;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 115
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideEllipticalButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda15;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 118
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideHatchingButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda16;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 121
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLazyButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda17;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 124
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideCurveButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda18;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 129
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeLineButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda19;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 132
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeRectButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda11;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 135
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeOvalButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda20;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 138
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modePolylineButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda21;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda21;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 141
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeArcButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda22;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 146
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symXButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda23;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda23;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 149
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symYButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda24;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 152
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symRButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda25;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda25;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 155
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symKButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda26;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda26;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 160
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveOneButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda27;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda27;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 163
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveTwoButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 166
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveThreeButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 169
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveFiveButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 172
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveIsoButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda5;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 175
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveGridButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 180
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->resetButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda7;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 183
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->flipButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda8;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 186
    iget-object v1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cameraLockButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda9;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1, v3, v4, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 189
    iget-object p1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cameraNavigatorButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda10;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v3, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$bindUI$1(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 102
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$10(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 133
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$11(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 136
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$12(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 139
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$13(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 142
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$14(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 147
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$15(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 150
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$16(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 153
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$17(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 156
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$18(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 161
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$19(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 164
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$2(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 105
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$20(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 167
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$21(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 170
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$22(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 173
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$23(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 176
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$24(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 181
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$25(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 184
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$26(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 187
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$27(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 190
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$3(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 108
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$4(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 113
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$5(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 116
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$6(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 119
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$7(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 122
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$8(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 125
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$bindUI$9(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 130
    invoke-virtual {p2, p0}, Lcom/infinite/app/ui/UIComponent;->addClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateActive(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 195
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private updateCameraItems()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->resetImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->updateCameraResetIcon(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cameraLockImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 282
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cameraNavigatorImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCanvasPreviewShowing()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private updateGuideItems()V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->getGuideManager()Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;->getType()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLinesImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-direct {p0, v1, v4}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 235
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideEllipseImage:Landroid/widget/ImageView;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 236
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideCurveImage:Landroid/widget/ImageView;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v2, v3

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 237
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideHatchingImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHatching()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 238
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLazyImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isLazyActive()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 240
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLinearButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x82

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 241
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideEllipticalButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x83

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 242
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideCurveButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x86

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 243
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLazyButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x87

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 244
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideHatchingButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x88

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method

.method private updatePerspectiveItems()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->getPerspectiveManager()Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getType()I

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveOneImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 265
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveTwoImage:Landroid/widget/ImageView;

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 266
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveThreeImage:Landroid/widget/ImageView;

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 267
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveFiveImage:Landroid/widget/ImageView;

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 268
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveIsoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 269
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveGridImage:Landroid/widget/ImageView;

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    :goto_5
    invoke-direct {p0, v1, v3}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 271
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveOneButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x96

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 272
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveTwoButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x97

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 273
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveThreeButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x98

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 274
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveFiveButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x99

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 275
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveIsoButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x9a

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 276
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveGridButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x9b

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method

.method private updateShapeItems()V
    .locals 5

    .line 217
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getShapeType()I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeLineImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-direct {p0, v1, v4}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 219
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeRectImage:Landroid/widget/ImageView;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 220
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeOvalImage:Landroid/widget/ImageView;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-direct {p0, v1, v4}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 221
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modePolylineImage:Landroid/widget/ImageView;

    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    invoke-direct {p0, v1, v4}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 222
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeArcImage:Landroid/widget/ImageView;

    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 224
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeLineButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x8c

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 225
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeOvalButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x8d

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 226
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeRectButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x8e

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 227
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modePolylineButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x90

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 228
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeArcButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x91

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method

.method private updateSymmetryItems()V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->getSymmetryManager()Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symXImage:Landroid/widget/ImageView;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 251
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symYImage:Landroid/widget/ImageView;

    if-ne v0, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 252
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symRImage:Landroid/widget/ImageView;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 253
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symKImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    move v3, v4

    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 255
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symXButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x78

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 256
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symYButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x79

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 257
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symRButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x7a

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 258
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symKButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x7b

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method

.method private updateToolItems()V
    .locals 8

    .line 201
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 203
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFillStrictType()I

    move-result v5

    .line 204
    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v6, v6, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    invoke-direct {p0, v6, v7}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 205
    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v6, v6, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillGradientImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    if-eq v5, v2, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    if-ne v5, v3, :cond_3

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-direct {p0, v6, v3}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 206
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillPatternImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    if-ne v5, v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 207
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cloneImage:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-direct {p0, v3, v1}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateActive(Landroid/widget/ImageView;Z)V

    .line 209
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x65

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 210
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillGradientButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x66

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 211
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillPatternButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 212
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cloneButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x1f4

    invoke-static {v2}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 27
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 28
    invoke-static {p2}, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    .line 30
    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillImage:Landroid/widget/ImageView;

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 31
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillGradientButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillGradientImage:Landroid/widget/ImageView;

    const/16 v1, 0x66

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 32
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillPatternButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->fillPatternImage:Landroid/widget/ImageView;

    const/16 v1, 0x67

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 33
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cloneButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cloneImage:Landroid/widget/ImageView;

    const/16 v1, 0x1f4

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 35
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symXButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symXImage:Landroid/widget/ImageView;

    const/16 v1, 0x78

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 36
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symYButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symYImage:Landroid/widget/ImageView;

    const/16 v1, 0x79

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 37
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symRButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symRImage:Landroid/widget/ImageView;

    const/16 v1, 0x7a

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 38
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symKButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->symKImage:Landroid/widget/ImageView;

    const/16 v1, 0x7b

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 40
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLinearButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLinesImage:Landroid/widget/ImageView;

    const/16 v1, 0x82

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 41
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideEllipticalButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideEllipseImage:Landroid/widget/ImageView;

    const/16 v1, 0x83

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 42
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideCurveButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideCurveImage:Landroid/widget/ImageView;

    const/16 v1, 0x86

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 43
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLazyButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideLazyImage:Landroid/widget/ImageView;

    const/16 v1, 0x87

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 44
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideHatchingButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guideHatchingImage:Landroid/widget/ImageView;

    const/16 v1, 0x88

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 46
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeLineButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeLineImage:Landroid/widget/ImageView;

    const/16 v1, 0x8c

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 47
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeOvalButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeOvalImage:Landroid/widget/ImageView;

    const/16 v1, 0x8d

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 48
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeRectButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeRectImage:Landroid/widget/ImageView;

    const/16 v1, 0x8e

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 49
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modePolylineButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modePolylineImage:Landroid/widget/ImageView;

    const/16 v1, 0x90

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 50
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeArcButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->modeArcImage:Landroid/widget/ImageView;

    const/16 v1, 0x91

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 52
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveOneButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveOneImage:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 53
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveTwoButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveTwoImage:Landroid/widget/ImageView;

    const/16 v1, 0x97

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 54
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveThreeButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveThreeImage:Landroid/widget/ImageView;

    const/16 v1, 0x98

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 55
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveFiveButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveFiveImage:Landroid/widget/ImageView;

    const/16 v1, 0x99

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 56
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveIsoButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveIsoImage:Landroid/widget/ImageView;

    const/16 v1, 0x9a

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 57
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveGridButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectiveGridImage:Landroid/widget/ImageView;

    const/16 v1, 0x9b

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 59
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->resetButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->resetImage:Landroid/widget/ImageView;

    const/16 v1, 0xa0

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 60
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->flipButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->flipImage:Landroid/widget/ImageView;

    const/16 v1, 0xa1

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 61
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cameraLockButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cameraLockImage:Landroid/widget/ImageView;

    const/16 v1, 0xa2

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 62
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cameraNavigatorButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->cameraNavigatorImage:Landroid/widget/ImageView;

    const/16 v1, 0xa3

    invoke-static {v1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 64
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p1

    .line 66
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guidesPagerHintLeft:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 67
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guidesPagerHintRight:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 68
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guidesPager:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guidesPagerHintLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->guidesPagerHintRight:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, v1}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->setHintArrows(Landroid/view/View;Landroid/view/View;)V

    .line 70
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectivesPagerHintLeft:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 71
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectivesPagerHintRight:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 72
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectivesPager:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectivesPagerHintLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->perspectivesPagerHintRight:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, v1}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->setHintArrows(Landroid/view/View;Landroid/view/View;)V

    .line 74
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->shapesPagerHintLeft:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->shapesPagerHintRight:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->shapesPager:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->shapesPagerHintLeft:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;->shapesPagerHintRight:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->setHintArrows(Landroid/view/View;Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->update()V

    .line 80
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    invoke-direct {p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->bindUI(Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->binding:Lcom/brakefield/painter/databinding/PaintToolsViewControllerBinding;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateToolItems()V

    .line 87
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateGuideItems()V

    .line 88
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateShapeItems()V

    .line 89
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateSymmetryItems()V

    .line 90
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updatePerspectiveItems()V

    .line 91
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->updateCameraItems()V

    return-void
.end method
