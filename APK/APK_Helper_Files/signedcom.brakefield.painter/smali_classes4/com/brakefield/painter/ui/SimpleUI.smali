.class public Lcom/brakefield/painter/ui/SimpleUI;
.super Lcom/brakefield/infinitestudio/ui/UI;
.source "SimpleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/SimpleUI$AppSystems;
    }
.end annotation


# static fields
.field public static final DISMISS_TAG:I = -0x1

.field public static final LAYOUT_LISTENER_TAG:I = -0x2

.field private static final SHORTCUT_ACTIONS_ALPHA_LOCK:I = 0x35

.field private static final SHORTCUT_ACTIONS_FIT_SCREEN:I = 0x34

.field private static final SHORTCUT_ACTIONS_REDO:I = 0x33

.field private static final SHORTCUT_ACTIONS_SELECTION_MASK:I = 0x36

.field private static final SHORTCUT_ACTIONS_UNDO:I = 0x32

.field private static final SHORTCUT_BLEND:I = 0x3d

.field private static final SHORTCUT_BRUSH_SETTINGS:I = 0x3f

.field private static final SHORTCUT_DECREASE_SIZE:I = 0x46

.field private static final SHORTCUT_EDIT_COLOR:I = 0x14

.field private static final SHORTCUT_EDIT_CURVES:I = 0x15

.field private static final SHORTCUT_ENTER:I = 0x4a

.field private static final SHORTCUT_ERASE:I = 0x3e

.field private static final SHORTCUT_ESC:I = 0x49

.field private static final SHORTCUT_INCREASE_SIZE:I = 0x47

.field private static final SHORTCUT_LAYERS:I = 0x40

.field private static final SHORTCUT_MENUS_BRUSHES:I = 0x2a

.field private static final SHORTCUT_MENUS_COLOR:I = 0x28

.field private static final SHORTCUT_MENUS_TOOLS:I = 0x29

.field private static final SHORTCUT_OPTIONS_NEW:I = 0x0

.field private static final SHORTCUT_OPTIONS_OPEN:I = 0x1

.field private static final SHORTCUT_OPTIONS_SAVE:I = 0x2

.field private static final SHORTCUT_PAINT:I = 0x3c

.field private static final SHORTCUT_SELECTION_BRUSH:I = 0x20

.field private static final SHORTCUT_SELECTION_INVERT:I = 0x22

.field private static final SHORTCUT_SELECTION_LASSO:I = 0x1e

.field private static final SHORTCUT_SELECTION_RECT:I = 0x1f

.field private static final SHORTCUT_SELECTION_WAND:I = 0x21

.field private static final SHORTCUT_TOGGLE_INTERFACE:I = 0x48

.field private static final SHORTCUT_TOOLS_EYEDROPPER:I = 0xe

.field private static final SHORTCUT_TOOLS_FILL:I = 0xb

.field private static final SHORTCUT_TOOLS_GRADIENT:I = 0xc

.field private static final SHORTCUT_TOOLS_PEN:I = 0xd

.field private static final SHORTCUT_TOOLS_TRANSFORM:I = 0xa


# instance fields
.field protected acceptBar:Landroid/view/View;

.field protected acceptBarContainer:Landroid/view/ViewGroup;

.field protected acceptButton:Landroid/widget/ImageView;

.field private final adjustmentLayerToolbar:Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;

.field private app:Lcom/brakefield/painter/app/PainterApp;

.field private appSystems:Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

.field private binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

.field private bindingInterface:Z

.field brushesViewController:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

.field protected cancelButton:Landroid/widget/ImageView;

.field private final colorAdjustmentsToolbar:Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;

.field private final colorCurvesToolbar:Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;

.field colorWheelViewController:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

.field private final cropToolbar:Lcom/brakefield/painter/ui/toolbars/CropToolbar;

.field private final customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

.field private final displayMessage:Lcom/brakefield/infinitestudio/ui/DisplayMessage;

.field protected extraBar:Landroid/view/ViewGroup;

.field private final fillToolbar:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

.field private final filterToolbar:Lcom/brakefield/painter/ui/toolbars/FilterToolbar;

.field private handler:Lcom/brakefield/painter/SharedMessageHandler;

.field homeViewController:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

.field protected hoverContainer:Landroid/view/ViewGroup;

.field private importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

.field protected inflater:Landroid/view/LayoutInflater;

.field private final layersBar:Lcom/brakefield/painter/ui/LayersBar;

.field private final liquifyToolbar:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

.field protected mainContainer:Landroid/view/ViewGroup;

.field protected mainContainerBottom:Landroid/view/ViewGroup;

.field protected mainContainerLeft:Landroid/view/ViewGroup;

.field private mainRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final miniToolbars:Lcom/brakefield/painter/ui/MiniToolbars;

.field private final panelsToolbar:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

.field private final patternPathToolbar:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;

.field private final patternQuiltToolbar:Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;

.field private final patternSymmetryToolbar:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;

.field private final patternTileToolbar:Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;

.field private promptSaveChanges:Z

.field private final quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

.field private res:Landroid/content/res/Resources;

.field private final resizeToolbar:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;

.field protected scratchContainer:Landroid/view/ViewGroup;

.field private final selectionToolbar:Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;

.field protected showBars:Z

.field public showBrushSettings:Z

.field protected showInterface:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

.field protected showLayers:Z

.field public showUndoHistoryButton:Z

.field public showUndoHistorySlider:Z

.field private final straightenToolbar:Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;

.field private final toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

.field toolsViewController:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;

.field private final transformToolbar:Lcom/brakefield/painter/ui/toolbars/TransformToolbar;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/app/PainterApp;)V
    .locals 3

    .line 212
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/UI;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistoryButton:Z

    .line 166
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistorySlider:Z

    .line 170
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-direct {v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;-><init>()V

    iput-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->homeViewController:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->brushesViewController:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    .line 173
    iput-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->colorWheelViewController:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    .line 174
    iput-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolsViewController:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;

    .line 176
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    .line 177
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/CropToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/CropToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->cropToolbar:Lcom/brakefield/painter/ui/toolbars/CropToolbar;

    .line 178
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->resizeToolbar:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;

    .line 179
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->colorCurvesToolbar:Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;

    .line 180
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->liquifyToolbar:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

    .line 181
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->adjustmentLayerToolbar:Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;

    .line 182
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->straightenToolbar:Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;

    .line 183
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->fillToolbar:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    .line 184
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->transformToolbar:Lcom/brakefield/painter/ui/toolbars/TransformToolbar;

    .line 185
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->patternSymmetryToolbar:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;

    .line 186
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->patternPathToolbar:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;

    .line 187
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->patternQuiltToolbar:Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;

    .line 188
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->patternTileToolbar:Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;

    .line 189
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->panelsToolbar:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    .line 190
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->selectionToolbar:Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;

    .line 191
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->filterToolbar:Lcom/brakefield/painter/ui/toolbars/FilterToolbar;

    .line 192
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->colorAdjustmentsToolbar:Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;

    .line 194
    new-instance v2, Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/CustomToolbar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    .line 195
    new-instance v2, Lcom/brakefield/painter/ui/MiniToolbars;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/MiniToolbars;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->miniToolbars:Lcom/brakefield/painter/ui/MiniToolbars;

    .line 196
    new-instance v2, Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/LayersBar;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    .line 198
    new-instance v2, Lcom/brakefield/infinitestudio/ui/DisplayMessage;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/ui/DisplayMessage;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->displayMessage:Lcom/brakefield/infinitestudio/ui/DisplayMessage;

    .line 200
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->promptSaveChanges:Z

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->bindingInterface:Z

    .line 203
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/QuickHelp;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    .line 209
    iput-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->appSystems:Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    .line 213
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/painter/ui/toolbars/MainToolbar;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/painter/SharedMessageHandler;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-object p0
.end method

.method private dockBrushSettings(Landroid/app/Activity;)V
    .locals 2

    .line 1505
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainerLeft:Landroid/view/ViewGroup;

    goto :goto_0

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainerBottom:Landroid/view/ViewGroup;

    .line 1510
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->scratchContainer:Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_1

    .line 1511
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1512
    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->scratchContainer:Landroid/view/ViewGroup;

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->scratchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1515
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;-><init>()V

    .line 1516
    invoke-virtual {v0, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p1

    .line 1517
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->scratchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private getAnchor(I)Landroid/view/View;
    .locals 1

    .line 2243
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/app/PainterApp;->getComponent(I)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2245
    invoke-virtual {p1}, Lcom/infinite/app/ui/UIComponent;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAppSystems()Lcom/brakefield/painter/ui/SimpleUI$AppSystems;
    .locals 1

    .line 1522
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->appSystems:Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    if-nez v0, :cond_0

    .line 1523
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->appSystems:Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->appSystems:Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    return-object v0
.end method

.method private getProFeatureIndicator(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    .line 881
    invoke-static {}, Lcom/brakefield/painter/experiments/Experiments;->getProIndicatorDrawable()I

    move-result v0

    .line 882
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a0460

    .line 883
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 884
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v1
.end method

.method static synthetic lambda$atMaxLayers$14(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "Max layers"

    .line 424
    invoke-static {p0, p1}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$bind$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$fullscreen$21(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$handleShareIn$31(Landroid/app/Activity;I)V
    .locals 1

    .line 1460
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$popup$18(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$popup$19(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$returnHomeFromEditor$24()V
    .locals 1

    const/4 v0, 0x1

    .line 1394
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->saveProjectChanges(Z)V

    return-void
.end method

.method static synthetic lambda$returnHomeFromEditor$26()V
    .locals 0

    .line 1395
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->discardProjectChanges()V

    return-void
.end method

.method static synthetic lambda$showImportOptionsPanel$34(Landroid/app/Activity;I)V
    .locals 1

    .line 2295
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private prepareFloatingButton(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, -0x1

    .line 415
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 416
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method

.method private saveProjectToCurrentFolder(Ljava/lang/String;)V
    .locals 2

    .line 1414
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    .line 1415
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$Project;

    move-result-object p1

    .line 1416
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore;->findParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1418
    invoke-virtual {v0, p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    .line 1419
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore;->save()V

    :cond_0
    return-void
.end method

.method private showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V
    .locals 1

    .line 690
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 693
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 694
    invoke-virtual {p3, p1, p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 695
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0a0663

    .line 696
    invoke-virtual {p1, p5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 697
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;)V

    .line 698
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 700
    :cond_0
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/toolbars/Toolbar;->update()V

    return-void
.end method


# virtual methods
.method public addPopupDismissListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    .line 1065
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public adjustFloatView(Landroid/view/View;FFII)V
    .locals 10

    .line 1147
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1151
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1152
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p4

    sub-float/2addr v2, v4

    int-to-float v5, p5

    sub-float/2addr v3, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    sub-float/2addr p2, v4

    mul-float/2addr v5, v6

    sub-float/2addr p3, v5

    div-float/2addr p2, v2

    div-float/2addr p3, v3

    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v3, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    cmpl-float v3, p2, v4

    if-lez v3, :cond_1

    move p2, v4

    :cond_1
    :goto_0
    cmpg-float v3, p3, v2

    if-gez v3, :cond_2

    move p3, v2

    goto :goto_1

    :cond_2
    cmpl-float v2, p3, v4

    if-lez v2, :cond_3

    move p3, v4

    .line 1169
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1170
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 1176
    :cond_4
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1177
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1179
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 1180
    :goto_2
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1181
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1182
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1185
    :cond_5
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    move-result-object v5

    .line 1186
    array-length v6, v5

    move v7, v4

    :goto_3
    const/4 v8, 0x1

    if-ge v7, v6, :cond_6

    aget v9, v5, v7

    .line 1187
    invoke-virtual {v2, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibilityMode(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1190
    :cond_6
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    .line 1192
    invoke-virtual {v2, v1, v8, v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v5, 0x2

    .line 1193
    invoke-virtual {v2, v1, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v5, 0x3

    .line 1194
    invoke-virtual {v2, v1, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v5, 0x4

    .line 1195
    invoke-virtual {v2, v1, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1196
    invoke-virtual {v2, v1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    .line 1197
    invoke-virtual {v2, v1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 1199
    invoke-virtual {v2, v1, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1200
    invoke-virtual {v2, v1, p5}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1202
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1204
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1205
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1208
    :cond_7
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->updateFloatRemove(Landroid/view/View;)V

    return-void
.end method

.method public atMaxLayers(Landroid/app/Activity;)Z
    .locals 4

    .line 420
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 421
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->atMaxLayers()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    .line 423
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasWidth()I

    move-result v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/brakefield/painter/PainterLib;->getMaxLayersForSize(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f120a22

    invoke-static {v2, v0}, Lcom/brakefield/infinitestudio/Strings;->get(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 424
    new-instance v2, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda13;

    invoke-direct {v2, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda13;-><init>(Landroid/app/Activity;)V

    const v3, 0x7f120a2f

    invoke-static {p1, v0, v3, v2}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1209b7

    const/4 v2, 0x0

    const v3, 0x7f120a21

    .line 426
    invoke-static {p1, v3, v0, v2}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return v1
.end method

.method public back(Landroid/app/Activity;)Z
    .locals 5

    .line 1296
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->isHomeScreenShowing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1297
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->homeViewController:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->back()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 1298
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1, v2}, Lcom/brakefield/painter/SharedMessageHandler;->exitApp(I)V

    return v2

    .line 1302
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1303
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return v1

    .line 1307
    :cond_2
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->showBrushSettings:Z

    if-eqz v0, :cond_3

    .line 1308
    sput-boolean v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 1309
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setTool(I)V

    .line 1310
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->hideBrushSettings()V

    .line 1311
    invoke-virtual {p0, p1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    .line 1312
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return v1

    .line 1318
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 1319
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 1324
    iget-object v3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    invoke-virtual {p0, p1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    .line 1326
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :cond_6
    if-nez v0, :cond_7

    .line 1331
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->isHomeScreenShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1332
    invoke-virtual {p0, p1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->returnHomeFromEditor(Landroid/content/Context;I)V

    goto :goto_2

    :cond_7
    move v1, v0

    :cond_8
    :goto_2
    return v1
.end method

.method public bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V
    .locals 1

    .line 838
    invoke-virtual {p4, p1, p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    invoke-virtual {p4}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getUIBindingKey()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a0663

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 840
    invoke-virtual {p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    .line 842
    invoke-virtual {p0, p2, p4}, Lcom/brakefield/painter/ui/SimpleUI;->setDragListener(Landroid/view/View;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 844
    invoke-virtual {p4}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->isElementActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 845
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 847
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 850
    :goto_0
    invoke-static {p2, p3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public bind(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;Lcom/brakefield/painter/SharedMessageHandler;)V
    .locals 4

    .line 219
    iput-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    .line 220
    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    .line 222
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->inflater:Landroid/view/LayoutInflater;

    .line 225
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-direct {p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;-><init>()V

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->brushesViewController:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    .line 226
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-direct {p3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;-><init>()V

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->colorWheelViewController:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    .line 227
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;

    invoke-direct {p3}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;-><init>()V

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolsViewController:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;

    const p3, 0x7f0a035e

    .line 229
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p3, 0x7f0a02ae

    .line 230
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    const p3, 0x7f0a035b

    .line 231
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainer:Landroid/view/ViewGroup;

    const p3, 0x7f0a035d

    .line 232
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainerLeft:Landroid/view/ViewGroup;

    const p3, 0x7f0a035a

    .line 233
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainerBottom:Landroid/view/ViewGroup;

    const p3, 0x7f0a02a1

    .line 235
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 236
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showQuickHelp()Z

    move-result v2

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->visualizeQuickHelpCoverage()Z

    move-result v3

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/brakefield/painter/ui/QuickHelp;->setup(Landroid/view/ViewGroup;Lcom/brakefield/painter/app/PainterApp;ZZ)V

    const p3, 0x7f0a0563

    .line 238
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->showInterface:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    .line 239
    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 240
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->showInterface:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda32;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p1, p0, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 245
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->quickBar:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p0, v0}, Lcom/brakefield/painter/ui/CustomToolbar;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V

    .line 246
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->miniToolbars:Lcom/brakefield/painter/ui/MiniToolbars;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->miniToolbars:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p3, p1, p0, v0, v1}, Lcom/brakefield/painter/ui/MiniToolbars;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/CustomToolbar;)V

    .line 247
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->layersPanel:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v1, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->layersContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1, p0, v0, v1}, Lcom/brakefield/painter/ui/LayersBar;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/LayersPanelBinding;Landroid/view/View;)V

    .line 249
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->displayMessage:Lcom/brakefield/infinitestudio/ui/DisplayMessage;

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->setup(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 251
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d001e

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    const v0, 0x7f0a0010

    .line 252
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    .line 253
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->bottomAcceptBar:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 256
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topAcceptBar:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 258
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    const v0, 0x7f050002

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 259
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topAcceptBar:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/BarDrawable;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/BarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->bottomAcceptBar:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 263
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :goto_0
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->bottomExtraBar:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    .line 268
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainerLeft:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 269
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainerBottom:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 271
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->bottomOptions:Landroid/view/View;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/BarDrawable;

    iget-object v1, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->bottomOptions:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/BarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 274
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->noUndoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 275
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->redoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 276
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistoryButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 277
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->homeButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 279
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->homeButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda36;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 282
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainerLeft:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->scratchContainer:Landroid/view/ViewGroup;

    goto :goto_1

    .line 284
    :cond_1
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainContainerBottom:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->scratchContainer:Landroid/view/ViewGroup;

    .line 287
    :goto_1
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/ToastDrawable;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/ToastDrawable;-><init>()V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatRemove:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 299
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 317
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->noUndoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->redoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistoryButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    const v0, 0x7f0a0011

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    .line 343
    invoke-static {p3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 344
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 345
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    const v0, 0x7f0a00f4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    .line 354
    invoke-static {p3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 355
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 356
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda33;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->optionsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 365
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->optionsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;)V

    .line 367
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->refsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 368
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->refsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;)V

    .line 370
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->layerButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 371
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->layerButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda34;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskOptionsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 386
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskOptionsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;)V

    .line 388
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->creativeToolsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 389
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->creativeToolsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;)V

    .line 391
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->editingToolsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 392
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->editingToolsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;)V

    .line 394
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topSettings:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 395
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topSettings:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda35;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskToggle:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->prepareFloatingButton(Landroid/widget/ImageView;)V

    .line 402
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskToggle:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {p3, p2}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->setupKeyCommands(Landroid/app/Activity;)V

    const/4 p2, 0x0

    .line 406
    iput-boolean p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->bindingInterface:Z

    .line 407
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public bindUI(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 2223
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method public bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V
    .locals 1

    .line 2230
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method public bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2226
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    return-void
.end method

.method public clearLayers()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar;->clearLayers()V

    return-void
.end method

.method public dismissPopup()V
    .locals 3

    .line 1238
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x2

    .line 1240
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, -0x1

    .line 1242
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1244
    check-cast v1, Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    .line 1245
    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public dismissPopups()V
    .locals 2

    .line 1252
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public endDraggingFloatView()V
    .locals 0

    .line 1142
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->hideFloatRemove()V

    return-void
.end method

.method public fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1107
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1109
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1110
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    new-instance p1, Landroidx/transition/Fade;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroidx/transition/Fade;-><init>(I)V

    .line 1113
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    const-wide/16 v2, 0x50

    .line 1114
    invoke-virtual {p1, v2, v3}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 1115
    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 1117
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 1118
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, p3}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Z)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1123
    invoke-virtual {v0, p2, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1125
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getDefaultKeyCommandGroups(Landroid/app/Activity;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;",
            ">;"
        }
    .end annotation

    .line 2184
    invoke-virtual {p0, p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->getDefaultKeyCommandGroups(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultKeyCommandGroups(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/brakefield/painter/ui/SimpleUI;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1628
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    const v3, 0x7f1209c0

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;-><init>(Ljava/lang/String;)V

    .line 1635
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1637
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x2a

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v4, 0x7f1209a4

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1638
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x2b

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v4, 0x1

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v4, 0x7f1209bd

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1639
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x2f

    const/4 v12, 0x1

    const/4 v4, 0x2

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v4, 0x7f120a60

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1644
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    const v3, 0x7f120aff

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;-><init>(Ljava/lang/String;)V

    .line 1645
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x32

    const/4 v12, 0x0

    const/16 v5, 0xa

    invoke-virtual {v8, v0, v5, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v5, 0x7f120b04

    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1648
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x22

    const/16 v19, 0x0

    const/16 v5, 0xb

    invoke-virtual {v8, v0, v5, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v5, 0x7f12018e

    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1649
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x23

    const/16 v5, 0xc

    invoke-virtual {v8, v0, v5, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v5, 0x7f1201dc

    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1650
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x2c

    const/16 v5, 0xd

    invoke-virtual {v8, v0, v5, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v5, 0x7f1201e4

    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1651
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x1e

    const/4 v12, 0x1

    const/16 v5, 0x14

    invoke-virtual {v8, v0, v5, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v5, 0x7f1200bc

    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1652
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x31

    const/16 v19, 0x1

    const/16 v6, 0x15

    invoke-virtual {v8, v0, v6, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v6, 0x7f1200f0

    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1653
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x25

    const/4 v12, 0x0

    const/16 v6, 0xe

    invoke-virtual {v8, v0, v6, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v6, 0x7f120180

    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1659
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    const v4, 0x7f120a83

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;-><init>(Ljava/lang/String;)V

    .line 1660
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1662
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x28

    const/16 v6, 0x1e

    invoke-virtual {v8, v0, v6, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v6, 0x7f120a7e

    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1663
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x29

    const/16 v19, 0x0

    const/16 v6, 0x1f

    invoke-virtual {v8, v0, v6, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v6, 0x7f120a81

    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1664
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x2d

    const/16 v6, 0x20

    invoke-virtual {v8, v0, v6, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v6, 0x7f12007a

    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1665
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x33

    const/16 v7, 0x21

    invoke-virtual {v8, v0, v7, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v7, 0x7f120a82

    invoke-static {v7}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1666
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x25

    const/4 v12, 0x1

    const/4 v14, 0x1

    const/16 v7, 0x22

    invoke-virtual {v8, v0, v7, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v7, 0x7f12021e

    invoke-static {v7}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1672
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    const v4, 0x7f120943

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;-><init>(Ljava/lang/String;)V

    .line 1673
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1675
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v7, 0x28

    invoke-virtual {v8, v0, v7, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1676
    new-instance v4, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x30

    const/16 v5, 0x29

    invoke-virtual {v8, v0, v5, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1682
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    const v3, 0x7f120022

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;-><init>(Ljava/lang/String;)V

    .line 1683
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1685
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x36

    const/4 v12, 0x1

    const/16 v4, 0x32

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v4, 0x7f120b16

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1686
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x36

    const/16 v19, 0x1

    const/16 v21, 0x1

    const/16 v4, 0x33

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v4, 0x7f120a40

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1687
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/4 v11, 0x7

    const/4 v14, 0x1

    const/16 v4, 0x34

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v4, 0x7f1201bc

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1688
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x4c

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v4, 0x35

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v4, 0x7f12024d

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1689
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x49

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v4, 0x36

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v4, 0x7f120a84

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1695
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    const v3, 0x7f1209cc

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;-><init>(Ljava/lang/String;)V

    .line 1696
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x1e

    const/16 v4, 0x3c

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1699
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x27

    const/16 v4, 0x3d

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v4, 0x7f12006f

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1700
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x21

    const/16 v4, 0x3e

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v4, 0x7f120133

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1701
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v18, 0x1e

    const/16 v19, 0x1

    const/16 v21, 0x1

    const/16 v4, 0x3f

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v22

    const v4, 0x7f120a86

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1702
    new-instance v3, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v11, 0x89

    const/16 v4, 0x40

    invoke-virtual {v8, v0, v4, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v15

    const v4, 0x7f120234

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1708
    new-instance v10, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;-><init>(Ljava/lang/String;)V

    .line 1709
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1711
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v12, 0x47

    const/4 v15, 0x0

    const/16 v3, 0x46

    invoke-virtual {v8, v0, v3, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v16

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1712
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v19, 0x48

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v3, 0x47

    invoke-virtual {v8, v0, v3, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1713
    new-instance v2, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    const/16 v12, 0x6f

    const/16 v3, 0x49

    invoke-virtual {v8, v0, v3, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v16

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcom/brakefield/infinitestudio/ui/KeyCommand;-><init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    .line 1714
    new-instance v11, Lcom/brakefield/painter/ui/SimpleUI$3;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x4a

    invoke-virtual {v8, v0, v6, v1}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/brakefield/painter/ui/SimpleUI$3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V

    return-object v9
.end method

.method public getFloatView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getGuideManager()Lcom/brakefield/painter/nativeobjs/GuideManagerNative;
    .locals 1

    .line 1533
    invoke-direct {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getAppSystems()Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    return-object v0
.end method

.method public getHoverContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getImportIntentLaunchers()Lcom/brakefield/infinitestudio/ImportIntentLaunchers;
    .locals 1

    .line 2193
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    return-object v0
.end method

.method public getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2217
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public getPerspectiveManager()Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;
    .locals 1

    .line 1537
    invoke-direct {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getAppSystems()Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    return-object v0
.end method

.method public getReferenceManager()Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;
    .locals 1

    .line 1545
    invoke-direct {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getAppSystems()Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    return-object v0
.end method

.method public getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;
    .locals 1

    .line 2197
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-object v0
.end method

.method protected getShortcutAction(Landroid/app/Activity;I)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;
    .locals 0

    .line 2189
    invoke-virtual {p0, p1, p2, p0}, Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    move-result-object p1

    return-object p1
.end method

.method protected getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;
    .locals 1

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x14

    if-eq p2, v0, :cond_1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    const/4 p1, 0x0

    return-object p1

    .line 2155
    :pswitch_0
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$35;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$35;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 2166
    :pswitch_1
    new-instance p3, Lcom/brakefield/painter/ui/SimpleUI$36;

    invoke-direct {p3, p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI$36;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;)V

    return-object p3

    .line 2144
    :pswitch_2
    new-instance p3, Lcom/brakefield/painter/ui/SimpleUI$34;

    invoke-direct {p3, p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI$34;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;)V

    return-object p3

    .line 2133
    :pswitch_3
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$33;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$33;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 2122
    :pswitch_4
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$32;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$32;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 2106
    :pswitch_5
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$31;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$31;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 2094
    :pswitch_6
    new-instance p3, Lcom/brakefield/painter/ui/SimpleUI$30;

    invoke-direct {p3, p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI$30;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;)V

    return-object p3

    .line 2083
    :pswitch_7
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$29;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$29;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 2072
    :pswitch_8
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$28;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$28;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 2061
    :pswitch_9
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$27;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$27;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 2042
    :pswitch_a
    new-instance p3, Lcom/brakefield/painter/ui/SimpleUI$26;

    invoke-direct {p3, p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI$26;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;)V

    return-object p3

    .line 2030
    :pswitch_b
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$25;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$25;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 2018
    :pswitch_c
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$24;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$24;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 2007
    :pswitch_d
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$23;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$23;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 1995
    :pswitch_e
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$22;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$22;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 1979
    :pswitch_f
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$21;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$21;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 1968
    :pswitch_10
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$20;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$20;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 1957
    :pswitch_11
    new-instance p1, Lcom/brakefield/painter/ui/SimpleUI$19;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$19;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    return-object p1

    .line 1940
    :pswitch_12
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$18;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$18;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1928
    :pswitch_13
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$17;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$17;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1916
    :pswitch_14
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$16;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$16;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1904
    :pswitch_15
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$15;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$15;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1892
    :pswitch_16
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$14;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$14;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1846
    :pswitch_17
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$11;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$11;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1834
    :pswitch_18
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$10;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$10;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1822
    :pswitch_19
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$9;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$9;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1810
    :pswitch_1a
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$8;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$8;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1798
    :pswitch_1b
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$7;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$7;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1875
    :cond_0
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$13;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$13;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1863
    :cond_1
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$12;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$12;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1781
    :cond_2
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$6;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$6;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1769
    :cond_3
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$5;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$5;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    .line 1757
    :cond_4
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI$4;-><init>(Lcom/brakefield/painter/ui/SimpleUI;ILandroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x46
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSymmetryManager()Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;
    .locals 1

    .line 1541
    invoke-direct {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getAppSystems()Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    return-object v0
.end method

.method public getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;
    .locals 1

    .line 1529
    invoke-direct {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getAppSystems()Lcom/brakefield/painter/ui/SimpleUI$AppSystems;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    return-object v0
.end method

.method public handleShareIn(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .line 1446
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getUriFromIntentData(Landroid/content/ContentResolver;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1448
    :cond_0
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/net/Uri;)V

    new-instance v1, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda28;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda28;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/painter/FileImporter;->processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void
.end method

.method protected hasSettings()Z
    .locals 2

    .line 757
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 758
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 759
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getSymmetryManager()Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 761
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isLazyActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getPerspectiveManager()Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 763
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCanvasPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hideBrushSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->showBrushSettings:Z

    .line 670
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->scratchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public hideFloatRemove()V
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatRemove:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideInterface(Landroid/app/Activity;Z)V
    .locals 3

    .line 805
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->bindingInterface:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 810
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {p2}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->showBars:Z

    if-nez p2, :cond_2

    return-void

    .line 816
    :cond_2
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {p2}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    return-void

    .line 820
    :cond_3
    new-instance p2, Landroidx/transition/Fade;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Landroidx/transition/Fade;-><init>(I)V

    .line 821
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    const-wide/16 v1, 0x50

    .line 822
    invoke-virtual {p2, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 823
    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {v1}, Landroidx/constraintlayout/helper/widget/Layer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 825
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/helper/widget/Layer;->setVisibility(I)V

    .line 826
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoOptions:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/helper/widget/Layer;->setVisibility(I)V

    .line 827
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->hide()V

    .line 828
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/LayersBar;->hide()V

    .line 830
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 831
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 833
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public hidePopupContainer()V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    return-void
.end method

.method public inFloatRemove(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1230
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1231
    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatRemove:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1232
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1233
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1234
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isHomeScreenShowing()Z
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->homeViewController:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->isShowing(Lcom/brakefield/painter/ui/SimpleUI;)Z

    move-result v0

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$bind$0$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p2, 0x0

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    return-void
.end method

.method synthetic lambda$bind$1$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p2, 0x0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->returnHomeFromEditor(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic lambda$bind$10$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 0
    const/4 p2, 0x1

    .line 346
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->applyTool(Z)V

    .line 347
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    .line 349
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    .line 350
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$bind$11$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 357
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->cancelTool()V

    .line 358
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    .line 360
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    .line 361
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$bind$12$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 372
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1

    .line 373
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/LayersBar;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 374
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/LayersBar;->hide()V

    const/4 p2, 0x0

    .line 375
    iput-boolean p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->showLayers:Z

    .line 376
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/LayersBar;->show()V

    const/4 p2, 0x1

    .line 379
    iput-boolean p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->showLayers:Z

    .line 380
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$bind$13$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 396
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;-><init>()V

    .line 397
    invoke-virtual {v0, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ToolSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 398
    invoke-virtual {p0, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$bind$2$com-brakefield-painter-ui-SimpleUI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 290
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$bind$4$com-brakefield-painter-ui-SimpleUI(Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 302
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canUndo()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->shouldShowHistoryButton()Z

    move-result p3

    iput-boolean p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistoryButton:Z

    .line 304
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUndoCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 305
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setUndo()V

    .line 306
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$bind$5$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/16 p3, 0xfb

    .line 311
    invoke-static {p3}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object p3

    .line 312
    invoke-virtual {p3, p1, p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$bind$6$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 6

    .line 0
    const v1, 0x7f120a0c

    const v2, 0x7f1200b3

    const v3, 0x7f12009e

    .line 310
    new-instance v4, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$bind$7$com-brakefield-painter-ui-SimpleUI(Landroid/view/View;)V
    .locals 0

    .line 0
    const p1, 0x7f1209ae

    .line 317
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bind$8$com-brakefield-painter-ui-SimpleUI(Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 320
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canRedo()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 321
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUndoCount()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 322
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setRedo()V

    .line 323
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$bind$9$com-brakefield-painter-ui-SimpleUI(Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 328
    iget-object p3, p1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getVisibility()I

    move-result p3

    if-nez p3, :cond_0

    .line 329
    iget-object p3, p1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {p3}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setInvisible(Landroid/view/View;)V

    .line 330
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistoryButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const p3, 0x7f080430

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 331
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistoryButton:Z

    .line 332
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistorySlider:Z

    .line 333
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 335
    iput-boolean p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistorySlider:Z

    .line 336
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->setupUndoHistorySlider(Landroid/app/Activity;)V

    .line 337
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    .line 338
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistoryButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const p2, 0x7f0800fb

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$dismissPopups$23$com-brakefield-painter-ui-SimpleUI()V
    .locals 3

    .line 1253
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x2

    .line 1255
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1256
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, -0x1

    .line 1257
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1259
    check-cast v1, Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    .line 1260
    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1262
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic lambda$fullscreen$22$com-brakefield-painter-ui-SimpleUI(ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 1119
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    :cond_0
    return p2
.end method

.method synthetic lambda$handleShareIn$30$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 1

    .line 1449
    iget-object v0, p3, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/FileImporter;->isProjectFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->homeViewController:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-virtual {p3}, Lcom/brakefield/painter/FileImporter$ImportUri;->asFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->openProject(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->refreshHomeScreen()V

    goto :goto_1

    .line 1452
    :cond_0
    iget-object v0, p3, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/FileImporter;->isImageFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1453
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->isHomeScreenShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hasCurrentProject()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1457
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showImageImportOptionsForProject(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 1454
    iput-boolean p2, p3, Lcom/brakefield/painter/FileImporter$ImportUri;->isCopy:Z

    .line 1455
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showCreateProjectScreen(Landroid/app/Activity;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    move-result-object p2

    .line 1456
    iget-object p3, p3, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {p2, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importImage(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$popup$17$com-brakefield-painter-ui-SimpleUI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 960
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    :cond_0
    return p2
.end method

.method synthetic lambda$popup$20$com-brakefield-painter-ui-SimpleUI(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View;IIII)V
    .locals 7

    .line 0
    if-eqz p1, :cond_0

    const/4 p4, 0x2

    new-array p4, p4, [I

    .line 974
    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p5, 0x0

    aget v3, p4, p5

    const/4 p5, 0x1

    aget v4, p4, p5

    .line 975
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/painter/ui/SimpleUI;->restrictPopup(Landroid/view/View;Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 977
    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/painter/ui/SimpleUI;->restrictPopup(Landroid/view/View;Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method synthetic lambda$returnHomeFromEditor$25$com-brakefield-painter-ui-SimpleUI(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1394
    new-instance p2, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda24;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->saveAndReturnHomeFromEditor(Ljava/lang/Runnable;I)V

    return-void
.end method

.method synthetic lambda$returnHomeFromEditor$27$com-brakefield-painter-ui-SimpleUI(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1395
    new-instance p2, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->saveAndReturnHomeFromEditor(Ljava/lang/Runnable;I)V

    return-void
.end method

.method synthetic lambda$returnHomeFromEditor$28$com-brakefield-painter-ui-SimpleUI(Landroid/content/Context;I)V
    .locals 7

    .line 1388
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 1389
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->promptSaveChanges:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1390
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->projectNeedsSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "REPLACE WITH SAVE DIALOG"

    .line 1392
    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Todo;->fix(Ljava/lang/String;)V

    const v2, 0x7f120a25

    const v3, 0x7f120a60

    const v4, 0x7f120112

    .line 1393
    new-instance v5, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda25;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    new-instance v6, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda26;

    invoke-direct {v6, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda26;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1396
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->saveAndReturnHomeFromEditor(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 1397
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->saveAndReturnHomeFromEditor(Ljava/lang/Runnable;I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$returnHomeFromEditor$29$com-brakefield-painter-ui-SimpleUI(Landroid/content/Context;I)V
    .locals 2

    .line 1387
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    new-instance v1, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$selectFillPattern$36$com-brakefield-painter-ui-SimpleUI(Lcom/brakefield/infinitestudio/ui/RoundButton;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 2

    .line 2369
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->isPreset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2370
    iget-object p2, p2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2371
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 2372
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternResourceName:Ljava/lang/String;

    .line 2373
    sput-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternCustomName:Ljava/lang/String;

    .line 2374
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2376
    :cond_0
    iget-object p2, p2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 2377
    sput-object p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternCustomName:Ljava/lang/String;

    .line 2378
    sput-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternResourceName:Ljava/lang/String;

    .line 2379
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 p1, 0x1

    .line 2381
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadPattern:Z

    .line 2382
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$setDragListener$15$com-brakefield-painter-ui-SimpleUI(Lcom/brakefield/painter/ui/DockableElements$DockableElement;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 890
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/ui/CustomToolbar;->getView(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    const v1, 0x7f050002

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 891
    iget-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p3}, Lcom/brakefield/painter/ui/CustomToolbar;->showForDragAndDrop()V

    .line 892
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0804ba

    .line 893
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p3, "name"

    const-string v1, "fill"

    .line 894
    invoke-static {p3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p3

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object p1

    invoke-virtual {p2, p3, v1, p1, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 895
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/CustomToolbar;->removeView(Landroid/view/View;)V

    .line 896
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    :cond_0
    return v0
.end method

.method synthetic lambda$setDragListener$16$com-brakefield-painter-ui-SimpleUI(Landroid/view/View;Lcom/brakefield/painter/ui/DockableElements$ToolListener;Lcom/brakefield/painter/ui/DockableElements$DockableElement;Landroid/view/View;)Z
    .locals 1

    .line 904
    iget-object p4, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/brakefield/painter/ui/CustomToolbar;->getView(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object p4

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/brakefield/painter/ui/DockableElements$ToolListener;->isActive()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    const p4, 0x7f050002

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0804ba

    .line 905
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p2, "name"

    const-string p4, "fill"

    .line 906
    invoke-static {p2, p4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    new-instance p4, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p4, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getId()I

    move-result p3

    invoke-static {p3}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 907
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/CustomToolbar;->removeView(Landroid/view/View;)V

    .line 908
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/CustomToolbar;->save()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$showFillToolColorsPanel$32$com-brakefield-painter-ui-SimpleUI(Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;Landroid/app/Activity;IZ)V
    .locals 2

    .line 1476
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p4, v0

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    invoke-virtual {p1, p4, v1, p3}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->setFillAdjustColor(FFF)V

    .line 1477
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 1478
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$showImportOptionsPanel$33$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 1

    .line 2291
    iget-object v0, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/FileImporter;->isImageFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    iget-object p2, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showImageImportOptionsForProject(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$showImportOptionsPanel$35$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 2290
    new-instance p2, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda30;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda31;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, p3, p2, v0}, Lcom/brakefield/painter/FileImporter;->processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void
.end method

.method public launchSettings()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->launchSettings()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;)V
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->scratchContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1499
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->dockBrushSettings(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .locals 16

    move-object/from16 v3, p3

    const/4 v0, 0x2

    if-eqz v3, :cond_0

    new-array v0, v0, [I

    .line 925
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v4, v0, v1

    const/4 v1, 0x1

    aget v5, v0, v1

    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 928
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    div-int/lit8 v12, v1, 0x2

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v13, v1, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v8 .. v15}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method public popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 13

    move-object v9, p0

    move-object v10, p2

    if-nez v10, :cond_0

    return-void

    .line 938
    :cond_0
    new-instance v11, Landroid/widget/FrameLayout;

    move-object v0, p1

    invoke-direct {v11, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 940
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 941
    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    new-instance v0, Landroidx/transition/Fade;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/transition/Fade;-><init>(I)V

    .line 944
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    const-wide/16 v2, 0x50

    .line 945
    invoke-virtual {v0, v2, v3}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 946
    iget-object v2, v9, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 948
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    .line 950
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v0, v4, v1

    const/4 v1, 0x2

    aput v0, v4, v1

    const/4 v1, 0x3

    aput v0, v4, v1

    const/4 v1, 0x4

    aput v0, v4, v1

    const/4 v1, 0x5

    aput v0, v4, v1

    const/4 v1, 0x6

    aput v0, v4, v1

    const/4 v1, 0x7

    aput v0, v4, v1

    const/4 v0, 0x0

    invoke-direct {v3, v4, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 951
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getOpaqueColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 952
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 954
    invoke-virtual {p2, v5}, Landroid/view/View;->setClipToOutline(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 955
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setElevation(F)V

    .line 956
    invoke-virtual {v11, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 957
    invoke-virtual {v11, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 959
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 964
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 965
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 967
    iget-object v0, v9, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 968
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 971
    :cond_1
    new-instance v12, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, v11

    move-object v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View;IIII)V

    const/4 v0, -0x2

    .line 980
    invoke-virtual {v11, v0, v12}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 981
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 982
    invoke-virtual {v11, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object v0, p0

    move-object v1, v11

    move-object v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 983
    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/painter/ui/SimpleUI;->restrictPopup(Landroid/view/View;Landroid/view/View;IIII)V

    .line 985
    iget-object v0, v9, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public popup(Landroid/app/Activity;Landroid/view/View;[I)V
    .locals 16

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 916
    aget v4, p3, v0

    const/4 v0, 0x1

    aget v5, p3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 918
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    div-int/lit8 v12, v0, 0x2

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v13, v0, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v8 .. v15}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method public popupSlider(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/PullButton;)V
    .locals 7

    .line 1078
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;-><init>(Landroid/content/Context;)V

    .line 1080
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1081
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    const v3, 0x7f070323

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1085
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1086
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1087
    iget-object v3, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    const v4, 0x7f08027b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    iget-object v3, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    const v4, 0x7f080425

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1090
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    const v5, 0x7f0700a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/brakefield/painter/ui/SimpleUI;->res:Landroid/content/res/Resources;

    const v6, 0x7f07005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1094
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setPadding(IIII)V

    .line 1096
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMax(I)V

    .line 1097
    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/PullButton;->getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1098
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/PullButton;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 1100
    invoke-virtual {p0, p1, v1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0, p1}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public promptDeleteLayer(I)V
    .locals 0

    .line 1344
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->deleteLayer(I)V

    .line 1345
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 1346
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method public refreshHomeScreen()V
    .locals 1

    .line 1434
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->isHomeScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->homeViewController:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->refreshProjects()V

    :cond_0
    return-void
.end method

.method public removeFloatView(Landroid/view/View;)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removePopupDismissListener()V
    .locals 3

    .line 1070
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1072
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    :cond_0
    return-void
.end method

.method public restrictPopup(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, -0x2

    move-object/from16 v5, p1

    .line 990
    invoke-virtual {v5, v4, v4}, Landroid/view/View;->measure(II)V

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 993
    iget-object v6, v0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v8, 0x1

    aget v5, v5, v8

    const/high16 v8, 0x41000000    # 8.0f

    .line 998
    invoke-static {v8}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v8

    float-to-int v8, v8

    .line 1000
    iget-object v9, v0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    .line 1001
    iget-object v10, v0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    .line 1002
    iget-object v11, v0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    .line 1003
    iget-object v12, v0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v12

    .line 1004
    iget-object v13, v0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    mul-int/lit8 v14, v8, 0x2

    sub-int/2addr v13, v14

    .line 1005
    iget-object v15, v0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    sub-int/2addr v15, v14

    sub-int/2addr v7, v9

    sub-int/2addr v5, v11

    .line 1010
    div-int/lit8 v9, p5, 0x2

    add-int/2addr v9, v2

    sub-int/2addr v9, v7

    .line 1011
    div-int/lit8 v7, p6, 0x2

    add-int/2addr v7, v3

    sub-int/2addr v7, v5

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    mul-int/2addr v10, v4

    sub-int/2addr v13, v10

    mul-int/2addr v12, v4

    sub-int/2addr v15, v12

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1020
    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1021
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1023
    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v12, v6, :cond_0

    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v14, v6, :cond_1

    .line 1024
    :cond_0
    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1025
    iput v14, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1026
    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    neg-int v6, v5

    .line 1029
    div-int/2addr v6, v4

    add-int/2addr v6, v9

    neg-int v9, v11

    .line 1030
    div-int/2addr v9, v4

    add-int/2addr v9, v7

    sub-int/2addr v6, v8

    sub-int/2addr v9, v8

    add-int v4, v6, v5

    if-le v4, v13, :cond_2

    sub-int v6, v13, v5

    goto :goto_0

    :cond_2
    add-int v4, v2, v6

    if-gez v4, :cond_3

    neg-int v6, v2

    :cond_3
    :goto_0
    add-int v2, v9, v11

    if-le v2, v15, :cond_4

    sub-int v9, v15, v11

    goto :goto_1

    :cond_4
    add-int v2, v3, v9

    if-gez v2, :cond_5

    neg-int v9, v3

    :cond_5
    :goto_1
    if-gez v6, :cond_6

    const/4 v6, 0x0

    :cond_6
    if-gez v9, :cond_7

    const/4 v9, 0x0

    :cond_7
    add-int/2addr v6, v8

    add-int/2addr v9, v8

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    int-to-float v3, v6

    cmpl-float v2, v2, v3

    if-nez v2, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v4, v9

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_9

    .line 1048
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v2, v9

    .line 1049
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    return-void
.end method

.method public returnHomeFromEditor(Landroid/content/Context;I)V
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    if-eqz v0, :cond_0

    .line 1385
    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->showProgress()V

    .line 1386
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda29;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/Context;I)V

    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 1400
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsSaveProject:Z

    .line 1401
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    :cond_0
    return-void
.end method

.method public saveAndReturnHomeFromEditor(Ljava/lang/Runnable;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1407
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1409
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->saveProjectToCurrentFolder(Ljava/lang/String;)V

    .line 1410
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1, p2}, Lcom/brakefield/painter/SharedMessageHandler;->exitApp(I)V

    return-void
.end method

.method public selectFillPattern(Landroid/app/Activity;I)V
    .locals 1

    .line 2365
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getAnchor(I)Landroid/view/View;

    move-result-object p2

    .line 2366
    check-cast p2, Lcom/brakefield/infinitestudio/ui/RoundButton;

    .line 2368
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/ui/RoundButton;)V

    sput-object v0, Lcom/brakefield/painter/activities/PatternResourcesActivity;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;

    .line 2385
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/brakefield/painter/activities/PatternResourcesActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2386
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public selectFilter()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->selectFilter()V

    return-void
.end method

.method public selectLayerAbove()V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar;->selectLayerAbove()V

    return-void
.end method

.method public selectLayerBelow()V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar;->selectLayerBelow()V

    return-void
.end method

.method protected setDragListener(Landroid/view/View;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V
    .locals 1

    .line 889
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/DockableElements$DockableElement;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected setDragListener(Landroid/view/View;Lcom/brakefield/painter/ui/DockableElements$DockableElement;Lcom/brakefield/painter/ui/DockableElements$ToolListener;)V
    .locals 1

    .line 903
    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Lcom/brakefield/painter/ui/DockableElements$ToolListener;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setImportIntentLaunchers(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    return-void
.end method

.method public setOpacityControl(Lcom/brakefield/painter/OpacityControl;)V
    .locals 1

    .line 1577
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setOpacityControl(Lcom/brakefield/painter/OpacityControl;)V

    return-void
.end method

.method public setPromptSaveChanges(Z)V
    .locals 0

    .line 1424
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->promptSaveChanges:Z

    return-void
.end method

.method public setUseColorHistoryStrip(Z)V
    .locals 1

    .line 2390
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setUseColorHistoryStrip(Z)V

    return-void
.end method

.method protected setupUndoHistorySlider(Landroid/app/Activity;)V
    .locals 4

    .line 722
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getRedoCount()I

    move-result v0

    .line 723
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUndoCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 729
    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMax(I)V

    .line 730
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 732
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI;->mainRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/brakefield/painter/ui/SimpleUI$1;

    invoke-direct {v3, p0, v1}, Lcom/brakefield/painter/ui/SimpleUI$1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;I)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    return-void
.end method

.method protected shouldShowHistoryButton()Z
    .locals 2

    .line 431
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUndoCount()I

    move-result v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getRedoCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showBindingIncompleteDialog(Landroid/app/Activity;)V
    .locals 3

    const v0, 0x7f1209b7

    const/4 v1, 0x0

    const-string v2, "UI Error: component not bound"

    .line 2239
    invoke-static {p1, v2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showBrushSettings(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 1368
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->showBrushSettings:Z

    .line 1369
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 1370
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public showBrushesPanel(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->brushesViewController:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-virtual {v0, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 1364
    invoke-virtual {p0, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public showChallengesScreen(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;)Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;
    .locals 2

    .line 2211
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;-><init>()V

    .line 2212
    invoke-virtual {v0, p1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-object v0
.end method

.method public showColorsPanel(Landroid/app/Activity;Landroid/view/View;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V
    .locals 7

    .line 1374
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->colorWheelViewController:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v5, p0

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getView(Landroid/app/Activity;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p3

    .line 1375
    invoke-virtual {p0, p1, p3, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public showCreateProjectScreen(Landroid/app/Activity;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
    .locals 3

    .line 2205
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;-><init>()V

    .line 2206
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getImportIntentLaunchers()Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-object v0
.end method

.method public showCreativeToolsPanel(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2262
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getAnchor(I)Landroid/view/View;

    move-result-object p2

    sget-object p3, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->CREATIVE_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->showToolsPanel(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;)V

    return-void
.end method

.method public showEditingToolsPanel(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2266
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getAnchor(I)Landroid/view/View;

    move-result-object p2

    sget-object p3, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->EDITING_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->showToolsPanel(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;)V

    return-void
.end method

.method public showExportOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2300
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;-><init>()V

    .line 2301
    invoke-virtual {p2, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->show(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method public showFillPatternSettings(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2358
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;-><init>()V

    .line 2359
    invoke-virtual {p2, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/PatternSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p2

    .line 2360
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showFillToolColorsPanel(Landroid/app/Activity;IIII)V
    .locals 9

    .line 1472
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getFillTool()Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;

    move-result-object v0

    .line 1474
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-direct {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;-><init>()V

    .line 1475
    new-instance v3, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;Landroid/app/Activity;)V

    new-instance v4, Lcom/brakefield/painter/ui/SimpleUI$2;

    invoke-direct {v4, p0, v0, p1}, Lcom/brakefield/painter/ui/SimpleUI$2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;Landroid/app/Activity;)V

    move-object v0, v1

    move-object v1, p1

    move v2, p2

    move-object v5, p0

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getView(Landroid/app/Activity;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v4, p4

    move v5, p5

    move v7, v8

    .line 1494
    invoke-virtual/range {v0 .. v7}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V

    return-void
.end method

.method public showFloatRemove()V
    .locals 3

    .line 1212
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatRemove:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1213
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatRemove:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showHomeScreen(Landroid/app/Activity;ZI)V
    .locals 1

    .line 1428
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->homeViewController:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    .line 1429
    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ZI)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 1430
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method public showImageImportOptionsForProject(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    .line 1465
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resources"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->buildPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1466
    invoke-static {p1, p2, v0}, Lcom/brakefield/painter/FileImporter;->copyFileToDestination(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1467
    invoke-static {p1, p0, p2}, Lcom/brakefield/painter/ImportImageOptions;->handleUri(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/net/Uri;)V

    return-void
.end method

.method public showImportOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 1

    .line 2288
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getAnchor(I)Landroid/view/View;

    move-result-object p2

    .line 2289
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getImportIntentLaunchers()Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    move-result-object p3

    new-instance v0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    return-void
.end method

.method public showInterface(Landroid/app/Activity;Z)V
    .locals 2

    .line 776
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->bindingInterface:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 780
    iget-boolean p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->showBars:Z

    if-nez p2, :cond_1

    return-void

    .line 784
    :cond_1
    new-instance p2, Landroidx/transition/Fade;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroidx/transition/Fade;-><init>(I)V

    .line 785
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    const-wide/16 v0, 0x50

    .line 786
    invoke-virtual {p2, v0, v1}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 787
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {v0}, Landroidx/constraintlayout/helper/widget/Layer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 789
    iget-boolean p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->showLayers:Z

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isLoading()Z

    move-result p2

    if-nez p2, :cond_2

    .line 790
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/LayersBar;->show()V

    .line 797
    :cond_2
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/helper/widget/Layer;->setVisibility(I)V

    .line 798
    iget-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoOptions:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/helper/widget/Layer;->setVisibility(I)V

    .line 800
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public showLayerAdjustmentOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 1

    .line 2311
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;-><init>()V

    .line 2312
    invoke-virtual {v0, p1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p2

    .line 2313
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showLayerAdjustments(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2335
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Adjustment layers"

    .line 2336
    invoke-static {p1, p2}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 2339
    :cond_0
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController;-><init>()V

    .line 2340
    invoke-virtual {p2, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p2

    .line 2341
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showLayerGroupOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 1

    .line 2317
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;-><init>()V

    .line 2318
    invoke-virtual {v0, p1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p2

    .line 2319
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showLayerMaskOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 1

    .line 2323
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;-><init>()V

    .line 2324
    invoke-virtual {v0, p1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p2

    .line 2325
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showLayerOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 1

    .line 2305
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;-><init>()V

    .line 2306
    invoke-virtual {v0, p1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p2

    .line 2307
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showLayerRenderingOptions(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2345
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;-><init>()V

    .line 2346
    invoke-virtual {p2, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p2

    .line 2347
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showLayerSelectionOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 1

    .line 2329
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;-><init>()V

    .line 2330
    invoke-virtual {v0, p1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p2

    .line 2331
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->displayMessage:Lcom/brakefield/infinitestudio/ui/DisplayMessage;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->show(Ljava/lang/String;)V

    return-void
.end method

.method public showOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2252
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController;-><init>()V

    .line 2253
    invoke-virtual {p2, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/OptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p2

    .line 2254
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showPaperSettings(Landroid/app/Activity;I[I)V
    .locals 1

    .line 2351
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getAnchor(I)Landroid/view/View;

    move-result-object p2

    .line 2352
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;-><init>()V

    .line 2353
    invoke-virtual {v0, p1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 2354
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showPopupContainer()V
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    return-void
.end method

.method public showRecordPanel(Landroid/app/Activity;I[I)V
    .locals 1

    .line 2282
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;-><init>()V

    .line 2283
    new-instance v0, Lcom/brakefield/painter/PlaybackManager;

    invoke-direct {v0}, Lcom/brakefield/painter/PlaybackManager;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/PlaybackManager;)Landroid/view/View;

    move-result-object p2

    .line 2284
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showReferencesPanel(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2270
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;-><init>()V

    .line 2271
    invoke-virtual {p2, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p2

    .line 2272
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showSelectionOptionsPanel(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2276
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;-><init>()V

    .line 2277
    invoke-virtual {p2, p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p2

    .line 2278
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;[I)V

    return-void
.end method

.method public showToolsPanel(Landroid/app/Activity;I[I)V
    .locals 0

    .line 2258
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getAnchor(I)Landroid/view/View;

    move-result-object p2

    sget-object p3, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->CREATIVE_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->showToolsPanel(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;)V

    return-void
.end method

.method public showToolsPanel(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;)V
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->toolsViewController:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;

    invoke-virtual {v0, p1, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;)Landroid/view/View;

    move-result-object p3

    .line 1380
    invoke-virtual {p0, p1, p3, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public showingPopup(Landroid/view/View;)Z
    .locals 7

    .line 1276
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1280
    iget-object v5, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_1

    goto :goto_2

    .line 1285
    :cond_1
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 1286
    check-cast v5, Landroid/view/ViewGroup;

    .line 1287
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    const/4 p1, 0x1

    sub-int/2addr v0, p1

    if-ne v3, v0, :cond_4

    move v1, p1

    :cond_4
    return v1
.end method

.method public startDraggingFloatView()V
    .locals 0

    .line 1138
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->showFloatRemove()V

    return-void
.end method

.method public toggleInterface(Landroid/app/Activity;)V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {v0}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/brakefield/painter/ui/SimpleUI;->hideInterface(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    .line 771
    :goto_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public transformPopup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1056
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    .line 1057
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI;->hoverContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1059
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public update(Landroid/app/Activity;)V
    .locals 18

    move-object/from16 v6, p0

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 455
    iget-boolean v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->bindingInterface:Z

    if-eqz v0, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showQuickHelp()Z

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->visualizeQuickHelpCoverage()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/QuickHelp;->updateViewVisibility(ZZ)V

    .line 459
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->homeButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->getVisibility()I

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->showInterface:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    return-void

    .line 462
    :cond_1
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->showInterface:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 464
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v0

    .line 465
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->isAdjustmentLayer(I)Z

    move-result v9

    .line 466
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->isPanelAdjustmentLayer(I)Z

    move-result v10

    .line 467
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->isCurvesAdjustmentLayer(I)Z

    move-result v11

    .line 468
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hasMask()Z

    move-result v12

    .line 469
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result v13

    .line 470
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v14

    .line 472
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->layerButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 473
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->creativeToolsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 475
    sget-boolean v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->splitTools:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->editingToolsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->editingToolsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    :goto_0
    if-nez v12, :cond_4

    if-eqz v13, :cond_3

    goto :goto_1

    .line 479
    :cond_3
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskOptionsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    goto :goto_2

    .line 478
    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskOptionsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    :goto_2
    if-eqz v12, :cond_5

    if-nez v13, :cond_5

    .line 481
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskToggle:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    goto :goto_3

    .line 482
    :cond_5
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskToggle:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 484
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/ui/SimpleUI;->getReferenceManager()Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->numberOfReferences()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->refsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    goto :goto_4

    .line 485
    :cond_6
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->refsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    :goto_4
    if-nez v9, :cond_7

    if-nez v10, :cond_7

    .line 487
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showToolBar()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {v0}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 488
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->show()V

    goto :goto_5

    .line 489
    :cond_7
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->hide()V

    .line 491
    :goto_5
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->update()V

    .line 493
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeCorrectionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 494
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 495
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->noUndoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    goto :goto_6

    .line 497
    :cond_8
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 498
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->noUndoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 501
    :goto_6
    iget-boolean v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->showLayers:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isLoading()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {v0}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 502
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar;->show()V

    goto :goto_7

    .line 503
    :cond_9
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar;->hide()V

    .line 505
    :goto_7
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->layerButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const v1, 0x7f08047d

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    goto :goto_8

    .line 506
    :cond_a
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->layerButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const v1, 0x7f08047c

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    .line 508
    :goto_8
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canUndo()Z

    move-result v0

    const v1, 0x7f08027b

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const v2, 0x7f0804cf

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    goto :goto_9

    .line 509
    :cond_b
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    .line 511
    :goto_9
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->redoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const v1, 0x7f080434

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    goto :goto_a

    .line 512
    :cond_c
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->redoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    .line 514
    :goto_a
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistoryButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/ui/SimpleUI;->shouldShowHistoryButton()Z

    move-result v0

    if-nez v0, :cond_d

    .line 515
    iput-boolean v7, v6, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistoryButton:Z

    .line 516
    iput-boolean v7, v6, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistorySlider:Z

    :cond_d
    const/16 v0, 0xa

    const/16 v1, 0xf

    const/4 v15, 0x5

    if-nez v10, :cond_10

    if-nez v11, :cond_10

    if-nez v9, :cond_f

    if-eqz v14, :cond_f

    if-eqz v13, :cond_e

    if-ne v14, v1, :cond_f

    :cond_e
    const/4 v2, 0x2

    if-eq v14, v2, :cond_f

    .line 522
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isEyedropper()Z

    move-result v2

    if-nez v2, :cond_f

    if-eq v14, v0, :cond_f

    if-eq v14, v15, :cond_f

    if-eqz v13, :cond_10

    if-eq v14, v8, :cond_f

    goto :goto_b

    .line 532
    :cond_f
    iget-object v2, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 527
    :cond_10
    :goto_b
    iget-object v2, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {v2}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_11

    .line 528
    iget-object v2, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 529
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showToolBar()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v6, Lcom/brakefield/painter/ui/SimpleUI;->toolbar:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->hide()V

    :cond_11
    :goto_c
    const/4 v5, 0x3

    const/4 v4, 0x7

    if-eqz v9, :cond_12

    if-nez v11, :cond_12

    if-eqz v10, :cond_16

    :cond_12
    if-eq v14, v4, :cond_16

    if-eq v14, v8, :cond_16

    if-eq v14, v0, :cond_16

    if-eq v14, v15, :cond_16

    if-eqz v13, :cond_13

    goto :goto_e

    .line 549
    :cond_13
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eq v14, v5, :cond_15

    if-ne v14, v15, :cond_14

    goto :goto_d

    .line 555
    :cond_14
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 552
    :cond_15
    :goto_d
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 537
    :cond_16
    :goto_e
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topBar:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {v0}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_17

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_17
    if-ne v14, v1, :cond_18

    .line 540
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 543
    :cond_18
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    if-nez v11, :cond_1a

    const/4 v0, 0x6

    if-ne v14, v0, :cond_19

    goto :goto_10

    :cond_19
    move v15, v5

    goto :goto_11

    :cond_1a
    :goto_10
    const/16 v2, 0x19a

    .line 561
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->colorCurvesToolbar:Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;

    iget-object v1, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v16, 0x7f120430

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    move v15, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    if-eqz v11, :cond_1b

    .line 563
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    :goto_11
    if-eqz v9, :cond_1c

    if-nez v10, :cond_1c

    if-nez v11, :cond_1c

    const/16 v2, 0x3e8

    .line 569
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->adjustmentLayerToolbar:Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    const v5, 0x7f120285

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    .line 571
    :cond_1c
    iget-boolean v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistoryButton:Z

    if-eqz v0, :cond_1d

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistoryButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_12

    .line 572
    :cond_1d
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistoryButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 574
    :goto_12
    iget-boolean v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->showUndoHistorySlider:Z

    if-eqz v0, :cond_1e

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_13

    .line 575
    :cond_1e
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoHistorySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 577
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/ui/SimpleUI;->hasSettings()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topSettings:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    goto :goto_14

    .line 578
    :cond_1f
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->topSettings:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 580
    :goto_14
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMaskActive()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 581
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskToggle:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const v1, 0x7f0802b5

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    .line 582
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskToggle:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    sget v1, Lcom/brakefield/infinitestudio/color/Colors;->RED:I

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setColorFilter(I)V

    goto :goto_15

    .line 584
    :cond_20
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskToggle:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const v1, 0x7f0802b4

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    .line 585
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskToggle:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setColorFilter(I)V

    :goto_15
    if-nez v9, :cond_28

    const/4 v0, 0x1

    if-eq v14, v0, :cond_27

    if-eq v14, v15, :cond_26

    const/4 v0, 0x4

    if-eq v14, v0, :cond_25

    const/4 v0, 0x5

    if-eq v14, v0, :cond_24

    const/4 v0, 0x7

    if-eq v14, v0, :cond_23

    if-eq v14, v8, :cond_22

    const/16 v0, 0x9

    if-eq v14, v0, :cond_21

    packed-switch v14, :pswitch_data_0

    if-eqz v13, :cond_28

    const/16 v2, 0x6f

    .line 628
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->selectionToolbar:Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    const v5, 0x7f12083e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto/16 :goto_16

    :pswitch_0
    const/16 v2, 0x19b

    .line 595
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->resizeToolbar:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f1207e1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto/16 :goto_16

    :pswitch_1
    const/16 v2, 0x198

    .line 620
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->patternTileToolbar:Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f12076f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto/16 :goto_16

    :pswitch_2
    const/16 v2, 0x197

    .line 617
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->patternQuiltToolbar:Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f120736

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto/16 :goto_16

    :pswitch_3
    const/16 v2, 0x196

    .line 614
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->patternPathToolbar:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f12072a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto/16 :goto_16

    :pswitch_4
    const/16 v2, 0x195

    .line 611
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->patternSymmetryToolbar:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f12075d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto/16 :goto_16

    :cond_21
    const/16 v2, 0x199

    .line 626
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->straightenToolbar:Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f1208a4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto :goto_16

    :cond_22
    const/16 v2, 0x191

    .line 601
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->filterToolbar:Lcom/brakefield/painter/ui/toolbars/FilterToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    const v5, 0x7f12057a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto :goto_16

    :cond_23
    const/16 v2, 0x190

    .line 598
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->colorAdjustmentsToolbar:Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    const v5, 0x7f1206c7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto :goto_16

    :cond_24
    const/16 v2, 0x194

    .line 608
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->liquifyToolbar:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->extraBar:Landroid/view/ViewGroup;

    const v5, 0x7f12066a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto :goto_16

    :cond_25
    const/16 v2, 0x192

    .line 592
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->cropToolbar:Lcom/brakefield/painter/ui/toolbars/CropToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f12048d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto :goto_16

    :cond_26
    const/16 v2, 0x66

    .line 623
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->fillToolbar:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f1204ed

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    goto :goto_16

    :cond_27
    :pswitch_5
    const/16 v2, 0x64

    .line 605
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->transformToolbar:Lcom/brakefield/painter/ui/toolbars/TransformToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f120922

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    :cond_28
    :goto_16
    if-nez v10, :cond_29

    const/16 v0, 0x1e

    if-ne v14, v0, :cond_2b

    :cond_29
    if-eqz v10, :cond_2a

    .line 634
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    .line 637
    :cond_2a
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_17
    const/16 v2, 0x19c

    .line 640
    iget-object v3, v6, Lcom/brakefield/painter/ui/SimpleUI;->panelsToolbar:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    iget-object v4, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBarContainer:Landroid/view/ViewGroup;

    const v5, 0x7f1206f7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showAndUpdateToolbar(Landroid/app/Activity;ILcom/brakefield/painter/ui/toolbars/Toolbar;Landroid/view/ViewGroup;I)V

    .line 643
    :cond_2b
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->editColorStop()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEditColorStop()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showFillToolColorsPanel(Landroid/app/Activity;IIII)V

    :cond_2c
    if-nez v12, :cond_2d

    if-eqz v13, :cond_2e

    .line 645
    :cond_2d
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->maskOptionsButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 647
    :cond_2e
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->acceptBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/CustomToolbar;->hide()V

    goto :goto_18

    .line 648
    :cond_2f
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/CustomToolbar;->show()V

    .line 650
    :goto_18
    iget-boolean v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->showBrushSettings:Z

    if-eqz v0, :cond_30

    .line 651
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/SimpleUI;->dockBrushSettings(Landroid/app/Activity;)V

    move-object/from16 v0, p1

    .line 652
    invoke-virtual {v6, v0, v7}, Lcom/brakefield/painter/ui/SimpleUI;->hideInterface(Landroid/app/Activity;Z)V

    .line 653
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->homeButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 654
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->miniToolbars:Lcom/brakefield/painter/ui/MiniToolbars;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MiniToolbars;->hide()V

    goto :goto_19

    .line 655
    :cond_30
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->miniToolbars:Lcom/brakefield/painter/ui/MiniToolbars;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MiniToolbars;->show()V

    .line 662
    :goto_19
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->miniToolbars:Lcom/brakefield/painter/ui/MiniToolbars;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/MiniToolbars;->update()V

    .line 663
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/CustomToolbar;->update()V

    .line 665
    iget-object v0, v6, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar;->update()V

    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateCameraIcon()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateCameraIcon()V

    return-void
.end method

.method public updateCameraResetIcon()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/CustomToolbar;->getView(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/SimpleUI;->updateCameraResetIcon(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateCameraResetIcon(Landroid/view/View;)V
    .locals 2

    .line 711
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v0

    .line 712
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    neg-float v0, v0

    .line 717
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public updateFloatRemove(Landroid/view/View;)V
    .locals 2

    .line 1221
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatRemove:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->binding:Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->floatRemove:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    .line 1223
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->inFloatRemove(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/brakefield/infinitestudio/color/Colors;->RED:I

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    goto :goto_0

    .line 1224
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    .line 1225
    :goto_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->invalidateSelf()V

    return-void
.end method

.method public updateHomeTitleBar()V
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->homeViewController:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->updateTitleBar()V

    return-void
.end method

.method public updateLayers()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->layersBar:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    return-void
.end method

.method public updateProFeatureIndicator(Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V
    .locals 1

    .line 854
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->isPaidFeature()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 855
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result p2

    const/4 v0, 0x1

    .line 856
    invoke-virtual {p0, p1, p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;ZZ)V

    :cond_0
    return-void
.end method

.method public updateProFeatureIndicator(Landroid/view/ViewGroup;ZZ)V
    .locals 3

    const v0, 0x7f0a0460

    .line 861
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p2, :cond_2

    if-nez v0, :cond_1

    .line 864
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 865
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getProFeatureIndicator(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    .line 866
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070061

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 867
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-eqz p3, :cond_0

    const/high16 p2, 0x40800000    # 4.0f

    .line 869
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    float-to-int p2, p2

    const/4 p3, 0x0

    .line 870
    invoke-virtual {v1, p2, p3, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 872
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/experiments/Experiments;->getProIndicatorColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 876
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateUIForView(Landroid/view/View;)V
    .locals 1

    .line 2234
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/app/PainterApp;->updateUIForView(Landroid/view/View;)V

    return-void
.end method
