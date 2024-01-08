.class public Lcom/brakefield/painter/activities/ActivityMain;
.super Lcom/brakefield/infinitestudio/Main;
.source "ActivityMain.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivityMain$TransparentDialogFragment;,
        Lcom/brakefield/painter/activities/ActivityMain$DropListener;
    }
.end annotation


# static fields
.field public static shareIn:Landroid/content/Intent;


# instance fields
.field private final CleanCachedLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final DecreaseOpacity:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final DecreaseSize:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final DismissProgress:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final ExitApp:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final HideLoadScreen:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final HideSplashScreen:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final IncreaseOpacity:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final IncreaseSize:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final LaunchBrushCreator:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final LaunchExport:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final LaunchSettings:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field OpenSettings:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final RedoPressed:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final RenderEvent:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final RequestRender:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final SelectFilter:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final SelectLayerAbove:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final SelectLayerBelow:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final ShowInterface:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final ShowMessage:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final ShowProgress:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final ToggleInterface:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final UndoPressed:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final UpdateCameraIcon:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final UpdateLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final UpdateUI:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final app:Lcom/brakefield/painter/app/PainterApp;

.field private binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

.field private disableBack:Z

.field private handler:Lcom/brakefield/painter/SharedMessageHandler;

.field private importIntentRetrievers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

.field private inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

.field private interfaceLoader:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field private lastFrameNanos:J

.field private messageHandler:Lcom/brakefield/infinitestudio/MessageHandler;

.field private final opacityControl:Lcom/brakefield/painter/OpacityControl;

.field private pickFilterLauncher:Lcom/brakefield/painter/activities/FiltersActivity$Launcher;

.field private prefs:Landroid/content/SharedPreferences;

.field private prevConfig:Landroid/content/res/Configuration;

.field private running:Z

.field private splashDrawn:J

.field private final ui:Lcom/brakefield/painter/ui/SimpleUI;

.field private viewModel:Lcom/brakefield/painter/GLRendererViewModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/Main;-><init>()V

    .line 121
    new-instance v0, Lcom/brakefield/painter/app/PainterApp;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getApp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/app/PainterApp;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    .line 123
    new-instance v1, Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/SimpleUI;-><init>(Lcom/brakefield/painter/app/PainterApp;)V

    iput-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 127
    new-instance v0, Lcom/brakefield/painter/OpacityControl;

    invoke-direct {v0}, Lcom/brakefield/painter/OpacityControl;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->splashDrawn:J

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prevConfig:Landroid/content/res/Configuration;

    .line 143
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/activities/ActivityMain;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->OpenSettings:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->running:Z

    const-wide/16 v0, -0x1

    .line 161
    iput-wide v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->lastFrameNanos:J

    .line 894
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->RequestRender:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 895
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowProgress:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 898
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda23;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->DismissProgress:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 901
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda24;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->UndoPressed:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 905
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda25;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->RedoPressed:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 909
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda26;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowMessage:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 915
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda27;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowInterface:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 916
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda28;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ToggleInterface:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 917
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda29;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchSettings:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 918
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectLayerBelow:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 919
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectLayerAbove:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 920
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->DecreaseSize:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 930
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->IncreaseSize:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 940
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->DecreaseOpacity:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 950
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->IncreaseOpacity:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 960
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->HideLoadScreen:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 968
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ExitApp:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 979
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchExport:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 987
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateCameraIcon:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 988
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchBrushCreator:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 989
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->HideSplashScreen:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 996
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 997
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateUI:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 1001
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->CleanCachedLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 1002
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectFilter:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 1008
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->RenderEvent:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 1046
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$3;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->messageHandler:Lcom/brakefield/infinitestudio/MessageHandler;

    .line 1055
    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$4;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$4;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/res/Configuration;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/painter/activities/ActivityMain;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->interfaceLoader:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/Intent;)Z
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->handleShareIn(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/brakefield/painter/activities/ActivityMain;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->interfaceLoader:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/brakefield/painter/activities/ActivityMain;)[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getMessages()[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->RequestRender:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->messageHandler:Lcom/brakefield/infinitestudio/MessageHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowProgress:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->DismissProgress:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->UndoPressed:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->RedoPressed:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowMessage:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateUI:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$202(Lcom/brakefield/painter/activities/ActivityMain;Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowInterface:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ToggleInterface:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchSettings:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectLayerBelow:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectLayerAbove:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->DecreaseSize:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->IncreaseSize:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->DecreaseOpacity:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->IncreaseOpacity:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/Context;Z)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/activities/ActivityMain;->createRenderView(Landroid/content/Context;Z)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->HideLoadScreen:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ExitApp:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchExport:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateCameraIcon:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchBrushCreator:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->HideSplashScreen:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->CleanCachedLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectFilter:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->RenderEvent:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/OpacityControl;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/SharedMessageHandler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/databinding/ActivityMainXBinding;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/brakefield/painter/activities/ActivityMain;)Landroid/content/SharedPreferences;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$900(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/ui/SimpleUI;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-object p0
.end method

.method private createRenderView(Landroid/content/Context;Z)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;
    .locals 1

    if-eqz p2, :cond_0

    .line 593
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/brakefield/painter/GLRendererViewModel;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/brakefield/painter/GLRendererViewModel;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->viewModel:Lcom/brakefield/painter/GLRendererViewModel;

    .line 594
    new-instance p2, Lcom/brakefield/painter/ui/MainViewX;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->viewModel:Lcom/brakefield/painter/GLRendererViewModel;

    invoke-direct {p2, p1, v0}, Lcom/brakefield/painter/ui/MainViewX;-><init>(Landroid/content/Context;Lcom/brakefield/painter/GLRendererViewModel;)V

    return-object p2

    .line 596
    :cond_0
    new-instance p2, Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p2, p1}, Lcom/brakefield/painter/ui/MainView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method private getMessages()[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 3

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    const/4 v1, 0x0

    .line 1016
    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->RequestRender:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowProgress:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->DismissProgress:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->UndoPressed:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->RedoPressed:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowMessage:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateUI:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ShowInterface:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ToggleInterface:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchSettings:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectLayerBelow:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectLayerAbove:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->DecreaseSize:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->IncreaseSize:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->DecreaseOpacity:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->IncreaseOpacity:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->HideLoadScreen:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ExitApp:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchExport:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->UpdateCameraIcon:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->LaunchBrushCreator:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->HideSplashScreen:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->CleanCachedLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->SelectFilter:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->RenderEvent:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prevConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->onConfigurationChanged(Landroid/app/Activity;)V

    .line 742
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    return-void

    .line 746
    :cond_0
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prevConfig:Landroid/content/res/Configuration;

    .line 748
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->init(Landroid/content/Context;)V

    .line 750
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    .line 751
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    .line 753
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    if-eqz v1, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->setScreenRotation(I)V

    .line 755
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->onConfigurationChanged(Landroid/app/Activity;)V

    .line 759
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    .line 760
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v1}, Lcom/brakefield/painter/SharedMessageHandler;->updateLayers()V

    .line 762
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    .line 763
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    .line 771
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasHeight()I

    move-result v1

    if-nez v1, :cond_3

    .line 772
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hasCurrentProject()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 773
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1}, Lcom/brakefield/painter/ui/SimpleUI;->isHomeScreenShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 774
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2}, Lcom/brakefield/painter/ui/SimpleUI;->showHomeScreen(Landroid/app/Activity;ZI)V

    .line 778
    :cond_3
    sput v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->newConfigWidth:I

    .line 779
    sput p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->newConfigHeight:I

    const/4 p1, 0x1

    .line 780
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->handleNewConfig:Z

    .line 782
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    return-void
.end method

.method private handleShareIn(Landroid/content/Intent;)Z
    .locals 2

    .line 548
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 550
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->handleShareIn(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$onCreate$4(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 358
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/brakefield/painter/ShareManager;->launchShareOptions(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method static synthetic lambda$updateFromPreferences$34(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Lcom/brakefield/infinitestudio/account/UserInfoCache;Ljava/lang/String;)V
    .locals 1

    .line 725
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/account/UserInfoCache;->fetchInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->updateUserVerified(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 726
    invoke-virtual {p1, p0}, Lcom/brakefield/infinitestudio/account/UserInfoCache;->storeInfo(Ljava/lang/String;)V

    return-void
.end method

.method private registerAppViews()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda31;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 389
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda43;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string/jumbo v2, "tools"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 393
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda53;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "creative_tools"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 397
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda54;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "editing_tools"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 401
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda56;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "references"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 405
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda57;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string/jumbo v2, "selection_options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 409
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda58;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "home"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 413
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda59;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "create_project"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 416
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda60;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "projects"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 419
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda61;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "record"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 422
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda32;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "import_options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 425
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda34;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "export_options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 429
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda35;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "purchase"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 433
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda36;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string/jumbo v2, "save_changes"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 437
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda37;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "community"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 442
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda38;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "classroom"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 446
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda39;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string/jumbo v2, "settings"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 450
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda40;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "filters"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 454
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda41;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "layer_options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 458
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda42;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "layer_adjustment_options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 462
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda45;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "layer_group_options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 466
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda46;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "layer_mask_options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 470
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda47;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "layer_selectin_options_panel"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 475
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda48;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "layer_adjustments"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 478
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda49;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "layer_rendering_options"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 481
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda50;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "paper_settings"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 485
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda51;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "fill_pattern_settings"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    .line 488
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda52;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    const-string v2, "fill_patterns"

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/app/PainterApp;->registerView(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V

    return-void
.end method

.method private requestRender()V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    if-eqz v0, :cond_0

    .line 890
    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda30;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    invoke-interface {v0, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private useLowLatencyRenderer()Z
    .locals 4

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 372
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "PREFS_USE_LOW_LATENCY_RENDERER_1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 376
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBetaVersion()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    return v2
.end method


# virtual methods
.method public back()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->disableBack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/ui/SimpleUI;->back(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public bindInterface(Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;)V
    .locals 4

    .line 787
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBackgroundColor()I

    move-result v0

    .line 788
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v1, v3, v0}, Lcom/brakefield/painter/PainterLib;->setDeskColor(FFF)V

    .line 790
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-virtual {v0, p0, p1, v1}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;Lcom/brakefield/painter/SharedMessageHandler;)V

    .line 792
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 793
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->setScreenRotation(I)V

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getMainControls()Lcom/brakefield/infinitestudio/MainControls;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->controls:Lcom/brakefield/infinitestudio/MainControls;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 641
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_1

    .line 643
    :cond_0
    sget v0, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/Main;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->handleShortcutKeys(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 645
    :cond_2
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/Main;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 650
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 651
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/Main;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 652
    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 655
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    aget v5, v2, v4

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x1

    aget v2, v2, v6

    int-to-float v2, v2

    sub-float/2addr v5, v2

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v3, p1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-gez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v5, p1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_1

    :cond_0
    const-string p1, "input_method"

    .line 659
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 660
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return v1
.end method

.method public doFrame(J)V
    .locals 4

    .line 578
    iget-wide v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->lastFrameNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 579
    iput-wide p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->lastFrameNanos:J

    .line 582
    :cond_0
    iput-wide p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->lastFrameNanos:J

    .line 584
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {p1}, Lcom/brakefield/painter/app/PainterApp;->needsUpdate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    .line 587
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/app/PainterApp;->updateUI(Landroid/content/Context;)V

    .line 588
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->listenForNextFrame()V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    .line 166
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getMainControls()Lcom/brakefield/infinitestudio/MainControls;
    .locals 2

    .line 494
    new-instance v0, Lcom/brakefield/painter/PainterMainControls;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-direct {v0, v1}, Lcom/brakefield/painter/PainterMainControls;-><init>(Lcom/brakefield/painter/SharedMessageHandler;)V

    return-object v0
.end method

.method synthetic lambda$new$0$com-brakefield-painter-activities-ActivityMain(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 0
    const/4 p1, 0x0

    .line 144
    invoke-static {p0, p1}, Lcom/brakefield/painter/PurchaseManager;->init(Landroid/app/Activity;Z)V

    .line 145
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->updateFromPreferences()V

    .line 146
    sget-boolean v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->refresh:Z

    if-eqz v0, :cond_0

    .line 147
    sput-boolean p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->refresh:Z

    .line 148
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->init(Landroid/app/Activity;)V

    .line 150
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->mainContainer:Landroid/widget/FrameLayout;

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 153
    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->bindInterface(Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;)V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 157
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method synthetic lambda$new$36$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 894
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    return-void
.end method

.method synthetic lambda$new$37$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 896
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$new$38$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 899
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$new$39$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 902
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canUndo()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setUndo()V

    .line 903
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    return-void
.end method

.method synthetic lambda$new$40$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 906
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canRedo()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setRedo()V

    .line 907
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    return-void
.end method

.method synthetic lambda$new$41$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 910
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 912
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$42$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 915
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showInterface(Landroid/app/Activity;Z)V

    return-void
.end method

.method synthetic lambda$new$43$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 916
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->toggleInterface(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$new$44$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 917
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->OpenSettings:Landroidx/activity/result/ActivityResultLauncher;

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$new$45$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 918
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->selectLayerBelow()V

    return-void
.end method

.method synthetic lambda$new$46$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 919
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->selectLayerAbove()V

    return-void
.end method

.method synthetic lambda$new$47$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 1

    .line 921
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSize()F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p3, p1, p2

    if-gez p3, :cond_0

    move p1, p2

    .line 924
    :cond_0
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushSize(F)V

    const/4 p2, 0x1

    .line 925
    sput-boolean p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 926
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    .line 927
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f120a9e

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    .line 928
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$new$48$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 1

    .line 931
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSize()F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    add-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p3, p1, p2

    if-lez p3, :cond_0

    move p1, p2

    .line 934
    :cond_0
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushSize(F)V

    const/4 p2, 0x1

    .line 935
    sput-boolean p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 936
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    .line 937
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f120a9e

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    .line 938
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$new$49$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 1

    .line 941
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushOpacity()F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    move p1, p3

    :cond_0
    div-float p2, p1, p2

    .line 944
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setBrushOpacity(F)V

    const/4 p2, 0x1

    .line 945
    sput-boolean p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 946
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    .line 947
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f1209bb

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p3, 0x0

    sget-object p3, Lkotlin/sequences/xWeI/PLNIgvxmKA;->dnj:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    .line 948
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$new$50$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 1

    .line 951
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushOpacity()F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    const/high16 p3, 0x40a00000    # 5.0f

    add-float/2addr p1, p3

    cmpl-float p3, p1, p2

    if-lez p3, :cond_0

    move p1, p2

    :cond_0
    div-float p2, p1, p2

    .line 954
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setBrushOpacity(F)V

    const/4 p2, 0x1

    .line 955
    sput-boolean p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 956
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    .line 957
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f1209bb

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    .line 958
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$new$51$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 961
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isDemoUser()Z

    move-result p1

    const-string p2, "PREF_STARTUP_HELP"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 962
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isDemoUser()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 963
    :cond_1
    sput p3, Lcom/brakefield/painter/activities/ActivityHelp;->type:I

    .line 964
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/painter/activities/ActivityHelp;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 965
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$new$52$com-brakefield-painter-activities-ActivityMain(I)V
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->isHomeScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->finish()V

    goto :goto_0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->refreshHomeScreen()V

    .line 974
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showHomeScreen(Landroid/app/Activity;ZI)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$53$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 969
    check-cast p1, Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 970
    new-instance p1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivityMain;I)V

    .line 977
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->launchExitOptions(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$new$54$com-brakefield-painter-activities-ActivityMain(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 983
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/brakefield/painter/ShareManager;->launchShareOptions(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method synthetic lambda$new$55$com-brakefield-painter-activities-ActivityMain(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 984
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$new$56$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 1

    .line 980
    check-cast p1, Ljava/lang/String;

    .line 981
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p2, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 982
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f12018c

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": \n\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p3, 0x7f120a8b

    .line 983
    invoke-static {p3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda63;-><init>(Lcom/brakefield/painter/activities/ActivityMain;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f120261

    .line 984
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda64;

    invoke-direct {p3, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda64;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    invoke-virtual {p2, p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 985
    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$new$57$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 987
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->updateCameraResetIcon()V

    return-void
.end method

.method synthetic lambda$new$58$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 988
    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const/4 p3, 0x0

    invoke-static {p0, p3, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showCreateBrushViewController(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$new$59$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 2

    .line 0
    const p1, 0x7f0a0592

    .line 990
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 992
    iget-wide p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->splashDrawn:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->splashDrawn:J

    .line 993
    :cond_0
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->remove(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$new$60$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 996
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method synthetic lambda$new$61$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 998
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 999
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method synthetic lambda$new$62$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 1001
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->clearLayers()V

    return-void
.end method

.method synthetic lambda$new$63$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Integer;)V
    .locals 0

    .line 1003
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setFilter(I)V

    const/16 p1, 0x8

    .line 1004
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setTool(I)V

    .line 1005
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    .line 1006
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$new$64$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 1002
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->pickFilterLauncher:Lcom/brakefield/painter/activities/FiltersActivity$Launcher;

    new-instance p2, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda65;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda65;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;->pickFilter(Lcom/brakefield/painter/activities/FiltersActivity$Launcher$OnPickListener;)V

    return-void
.end method

.method synthetic lambda$new$65$com-brakefield-painter-activities-ActivityMain(Ljava/lang/Object;II)V
    .locals 0

    .line 1009
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    if-eqz p2, :cond_0

    .line 1010
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p2, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1011
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->requestRender()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-brakefield-painter-activities-ActivityMain(II)V
    .locals 3

    .line 175
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSpecialEffectsSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;-><init>(J)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setTarget(I)V

    .line 177
    invoke-virtual {v0, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setEffect(I)V

    .line 178
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-brakefield-painter-activities-ActivityMain()Z
    .locals 4

    .line 251
    iget-wide v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->splashDrawn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->splashDrawn:J

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$3$com-brakefield-painter-activities-ActivityMain(Ljava/lang/String;)V
    .locals 0

    .line 351
    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternCustomName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 352
    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternResourceName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 353
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadPattern:Z

    .line 354
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method synthetic lambda$onCreate$5$com-brakefield-painter-activities-ActivityMain(I)V
    .locals 3

    .line 363
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {v0, v2, p1}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 364
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method synthetic lambda$registerAppViews$10$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 402
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showReferencesPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$11$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 406
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showSelectionOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$12$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 410
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lcom/brakefield/painter/ui/SimpleUI;->showHomeScreen(Landroid/app/Activity;ZI)V

    return-void
.end method

.method synthetic lambda$registerAppViews$13$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 414
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0}, Lcom/brakefield/painter/ui/SimpleUI;->showCreateProjectScreen(Landroid/app/Activity;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    return-void
.end method

.method synthetic lambda$registerAppViews$14$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 417
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showHomeScreen(Landroid/app/Activity;ZI)V

    return-void
.end method

.method synthetic lambda$registerAppViews$15$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 420
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showRecordPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$16$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 423
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showImportOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$17$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 426
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showExportOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$18$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 0
    const-string p1, "Core"

    .line 430
    invoke-static {p0, p1}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$registerAppViews$19$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 434
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->launchSettings()V

    return-void
.end method

.method synthetic lambda$registerAppViews$20$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 438
    new-instance p1, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    sput-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 439
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$registerAppViews$21$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 443
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/painter/activities/ActivityClassroom;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$registerAppViews$22$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 447
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->launchSettings()V

    return-void
.end method

.method synthetic lambda$registerAppViews$23$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 451
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->selectFilter()V

    return-void
.end method

.method synthetic lambda$registerAppViews$24$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 455
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showLayerOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$25$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 459
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showLayerAdjustmentOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$26$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 463
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showLayerGroupOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$27$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 467
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showLayerMaskOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$28$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 471
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showLayerSelectionOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$29$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 476
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showLayerAdjustments(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$30$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 479
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showLayerRenderingOptions(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$31$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 482
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showPaperSettings(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$32$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 486
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showFillPatternSettings(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$33$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 489
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4}, Lcom/brakefield/painter/ui/SimpleUI;->selectFillPattern(Landroid/app/Activity;I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$6$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 386
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showOptionsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$7$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 390
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showToolsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$8$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showCreativeToolsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$registerAppViews$9$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V
    .locals 0

    .line 398
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p0, p4, p5}, Lcom/brakefield/painter/ui/SimpleUI;->showEditingToolsPanel(Landroid/app/Activity;I[I)V

    return-void
.end method

.method synthetic lambda$requestRender$35$com-brakefield-painter-activities-ActivityMain()V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->requestRender()V

    return-void
.end method

.method public launchExitOptions()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/brakefield/painter/SharedMessageHandler;->exitApp(I)V

    return-void
.end method

.method public launchExitOptions(Ljava/lang/Runnable;)V
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 674
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method listenForNextFrame()V
    .locals 1

    .line 571
    iget-boolean v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->running:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 734
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/Main;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 735
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 173
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/fragments/PainterFragmentFactory;

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    new-instance v3, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    invoke-direct {v1, v2, v3}, Lcom/brakefield/painter/fragments/PainterFragmentFactory;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    .line 181
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/Main;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->analytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 185
    invoke-static {}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->getInstance()Lcom/brakefield/painter/experiments/FirebaseValueProvider;

    move-result-object p1

    sget-object v0, Lcom/brakefield/painter/experiments/Experiments;->values:Lcom/brakefield/painter/experiments/Values;

    invoke-virtual {p1, p0, v0}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->setup(Landroid/app/Activity;Lcom/brakefield/painter/experiments/Values;)V

    .line 187
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    .line 189
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->init(Landroid/app/Activity;)V

    .line 191
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->setOpacityControl(Lcom/brakefield/painter/OpacityControl;)V

    .line 193
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p1

    .line 194
    new-instance v0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;-><init>(Landroid/content/Context;Landroidx/activity/result/ActivityResultRegistry;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->importIntentRetrievers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    .line 195
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->importIntentRetrievers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 196
    new-instance v0, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;-><init>(Landroidx/activity/result/ActivityResultRegistry;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->pickFilterLauncher:Lcom/brakefield/painter/activities/FiltersActivity$Launcher;

    .line 197
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->pickFilterLauncher:Lcom/brakefield/painter/activities/FiltersActivity$Launcher;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 198
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->importIntentRetrievers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->setImportIntentLaunchers(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    .line 200
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->registerAppViews()V

    .line 202
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityMain;->useLowLatencyRenderer()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 206
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setUseChromebookLowLtency(Z)V

    .line 207
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPreviewSegmentsStyle(I)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v4, "dialog"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    const/4 v2, 0x0

    .line 223
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 224
    new-instance v2, Lcom/brakefield/painter/activities/ActivityMain$TransparentDialogFragment;

    invoke-direct {v2}, Lcom/brakefield/painter/activities/ActivityMain$TransparentDialogFragment;-><init>()V

    .line 225
    invoke-virtual {v2, v1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 227
    invoke-static {v3}, Lcom/brakefield/painter/PainterLib;->setUseChromebookLowLtency(Z)V

    .line 228
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPreviewSegmentsStyle(I)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setUseChromebookLowLtency(Z)V

    .line 231
    invoke-static {v3}, Lcom/brakefield/painter/PainterLib;->setPreviewSegmentsStyle(I)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->dummyContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$1;

    invoke-direct {v1, p0, p0}, Lcom/brakefield/painter/activities/ActivityMain$1;-><init>(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->splashScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda33;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 257
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCurrentStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Painter"

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/brakefield/painter/PainterLib;->initFileManager(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    .line 258
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->updateFromPreferences()V

    .line 260
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->interfaceLoader:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->inkingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->mainContainer:Landroid/widget/FrameLayout;

    .line 262
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->binding:Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->splashScreen:Landroid/view/View;

    .line 263
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->init(Landroid/app/Activity;)V

    .line 264
    new-instance v2, Lcom/brakefield/painter/activities/ActivityMain$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/brakefield/painter/activities/ActivityMain$2;-><init>(Lcom/brakefield/painter/activities/ActivityMain;Landroid/view/View;ZLandroid/view/ViewGroup;)V

    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 350
    :cond_3
    new-instance p1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda44;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda44;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    sput-object p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->listener:Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;

    .line 356
    new-instance p1, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    sput-object p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 358
    new-instance p1, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda55;

    invoke-direct {p1}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda55;-><init>()V

    sput-object p1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->listener:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$OnExportSelectedListener;

    .line 360
    invoke-static {p0}, Lcom/brakefield/painter/addons/Addons;->setup(Landroid/content/Context;)V

    .line 362
    sget-object p1, Lcom/brakefield/painter/addons/Addons;->instaPick:Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;

    new-instance v0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda62;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda62;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->setOnColorChangedListener(Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 499
    invoke-super {p0}, Lcom/brakefield/infinitestudio/Main;->onDestroy()V

    .line 500
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->destroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    return v1

    .line 607
    :cond_1
    sget v0, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/brakefield/infinitestudio/Main;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_2
    return v1

    .line 610
    :cond_3
    :goto_0
    sget v0, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Lcom/brakefield/infinitestudio/Main;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 613
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/brakefield/infinitestudio/Main;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-eq p1, v0, :cond_7

    const/16 v0, 0x54

    if-eq p1, v0, :cond_6

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 636
    invoke-super {p0, p1, p2}, Lcom/brakefield/infinitestudio/Main;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 626
    :cond_0
    sget v0, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/brakefield/infinitestudio/Main;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 627
    :cond_1
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->controls:Lcom/brakefield/infinitestudio/MainControls;

    sget p2, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/MainControls;->handleVolumeUp(I)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->controls:Lcom/brakefield/infinitestudio/MainControls;

    sget p2, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/MainControls;->handleVolumeDown(I)V

    :goto_0
    return v1

    .line 631
    :cond_3
    sget v0, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Lcom/brakefield/infinitestudio/Main;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 632
    :cond_4
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget p2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    if-le p1, p2, :cond_5

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->controls:Lcom/brakefield/infinitestudio/MainControls;

    sget p2, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/MainControls;->handleVolumeDown(I)V

    goto :goto_1

    .line 633
    :cond_5
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->controls:Lcom/brakefield/infinitestudio/MainControls;

    sget p2, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/MainControls;->handleVolumeUp(I)V

    :cond_6
    :goto_1
    return v1

    .line 622
    :cond_7
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->toggleInterface()V

    return v1

    .line 619
    :cond_8
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->back()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->launchExitOptions()V

    :cond_9
    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 534
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/Main;->onNewIntent(Landroid/content/Intent;)V

    .line 535
    sget-object v0, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 536
    sput-object p1, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    if-eqz p1, :cond_1

    .line 539
    sget-object p1, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 541
    sput-object v0, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    .line 542
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->handleShareIn(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 505
    invoke-super {p0}, Lcom/brakefield/infinitestudio/Main;->onPause()V

    .line 507
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    if-eqz v0, :cond_0

    .line 508
    invoke-interface {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->running:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 515
    invoke-super {p0}, Lcom/brakefield/infinitestudio/Main;->onResume()V

    .line 517
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->init(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 518
    invoke-static {p0, v0}, Lcom/brakefield/painter/PurchaseManager;->init(Landroid/app/Activity;Z)V

    .line 519
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->inkingCanvas:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->onResume()V

    .line 521
    sget-object v0, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 523
    sput-object v1, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    .line 524
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityMain;->handleShareIn(Landroid/content/Intent;)Z

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->running:Z

    .line 530
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityMain;->listenForNextFrame()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 558
    invoke-super {p0}, Lcom/brakefield/infinitestudio/Main;->onStart()V

    .line 559
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_STARTUP_HELP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/brakefield/painter/PurchaseManager;->init(Landroid/app/Activity;Z)V

    .line 560
    invoke-static {p0}, Lcom/brakefield/painter/addons/Addons;->start(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 565
    invoke-super {p0}, Lcom/brakefield/infinitestudio/Main;->onStop()V

    .line 566
    invoke-static {p0}, Lcom/brakefield/painter/addons/Addons;->stop(Landroid/content/Context;)V

    return-void
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public updateFromPreferences()V
    .locals 6

    .line 685
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->init(Landroid/content/Context;)V

    .line 686
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_COLOR_PICKER_TYPE"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    .line 687
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_DOUBLE_TAP_MODE"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/brakefield/painter/ui/MainView;->doubleTapMode:I

    .line 688
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_LONGPRESS_MODE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    .line 689
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_FINGER_MODE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setFingerMode(I)V

    .line 690
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_VOLUME_MODE"

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/brakefield/painter/ui/MainView;->volumeMode:I

    .line 691
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_WACOM_EXPRESS_KEYS_MODE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/brakefield/painter/ui/MainView;->expressKeysMode:I

    .line 692
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_STYLUS_BUTTON_1_MODE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/brakefield/painter/ui/MainView;->stylusPrimaryButton:I

    .line 693
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_STYLUS_BUTTON_2_MODE"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/brakefield/painter/ui/MainView;->stylusSecondaryButton:I

    .line 694
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_ROTATE_CANVAS"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->rotate:Z

    .line 695
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->rotate:Z

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-direct {v0, v1, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 697
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 698
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->snapToOrthagonalDirection(FF)V

    .line 699
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/material/navigation/PjId/DFPED;->wBaHtouGaVct:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->disableBack:Z

    .line 702
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_COLOR_TONE_LOCK"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock:Z

    .line 703
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_SPLIT_TOOLS_MEMU"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->splitTools:Z

    .line 705
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_USE_COLOR_HISTORY_STRIP"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->setUseColorHistoryStrip(Z)V

    .line 707
    invoke-static {}, Lcom/brakefield/painter/PainterPreferences;->getInstance()Lcom/brakefield/painter/PainterPreferences;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/PainterPreferences;->load(Landroid/content/SharedPreferences;)V

    .line 709
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/OpacityControl;->setup(Landroid/content/SharedPreferences;)V

    .line 711
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_PROMPT_SAVE_CHANGES"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->setPromptSaveChanges(Z)V

    .line 713
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    .line 714
    new-instance v1, Lcom/brakefield/infinitestudio/account/UserInfoCache;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/account/UserInfoCache;-><init>(Landroid/content/Context;)V

    .line 715
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/account/UserInfoCache;->fetchInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 717
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->loginUser(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->logoutUser()V

    .line 722
    :goto_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 723
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserVerified()Z

    move-result v2

    if-nez v2, :cond_2

    .line 724
    new-instance v2, Lcom/brakefield/infinitestudio/account/UserFunctions$CheckUserVerified;

    invoke-direct {v2, v0}, Lcom/brakefield/infinitestudio/account/UserFunctions$CheckUserVerified;-><init>(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V

    new-instance v3, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, v1}, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Lcom/brakefield/infinitestudio/account/UserInfoCache;)V

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;)V

    :cond_2
    return-void
.end method
