.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;
.super Ljava/lang/Object;
.source "CreateProjectViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimensionsSection"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

.field private lockAspectRatio:F

.field private final observeCanvasToolLargeText:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observeDpi:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeIsLandscape:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeIsPortrait:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeLockAspectRatio:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeMaxLayersText:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observeMeasurementUnits:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observePixelResolutionText:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observeShowCanvasToolLarge:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeShowPixelResolution:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeShowPresets:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeUnitAbbreviation:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private presetsSection:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

.field private showPresets:Z

.field private spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

.field private width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V
    .locals 2

    .line 408
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    const/4 v0, 0x0

    .line 416
    iput v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->lockAspectRatio:F

    .line 418
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->presetsSection:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    .line 435
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeShowPresets:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 439
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeMeasurementUnits:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 449
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeUnitAbbreviation:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 453
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 458
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 463
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeDpi:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 468
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeLockAspectRatio:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 479
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeIsLandscape:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 483
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeIsPortrait:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 487
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeMaxLayersText:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 490
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observePixelResolutionText:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 494
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeShowPixelResolution:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 498
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeCanvasToolLargeText:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 499
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeShowCanvasToolLarge:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;Z)Z
    .locals 0

    .line 408
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)F
    .locals 0

    .line 408
    iget p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->lockAspectRatio:F

    return p0
.end method

.method static synthetic access$1202(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;F)F
    .locals 0

    .line 408
    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->lockAspectRatio:F

    return p1
.end method

.method static synthetic access$1300(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)F
    .locals 0

    .line 408
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->getAspectRatio()F

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;FF)F
    .locals 0

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->getHeightForAspectRatio(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;FF)F
    .locals 0

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->getWidthForAspectRatio(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    return-object p0
.end method

.method private formatMeasurementValueString(F)Ljava/lang/String;
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.2f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    float-to-int p1, p1

    .line 729
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAspectRatio()F
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getCanvasTooLargeString()Ljava/lang/String;
    .locals 5

    .line 733
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v0

    .line 734
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v1

    .line 735
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getAdjustedCanvasScale(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 737
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasTooLargeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 738
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {v3, v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getCanvasDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;

    move-result-object v0

    .line 740
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/brakefield/painter/video/Dimensions;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, v0, Lcom/brakefield/painter/video/Dimensions;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1200a1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/Strings;->get(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_0
    iget v1, v0, Lcom/brakefield/painter/video/Dimensions;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, v0, Lcom/brakefield/painter/video/Dimensions;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1200a2

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/Strings;->get(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getHeightForAspectRatio(FF)F
    .locals 0

    mul-float/2addr p1, p2

    return p1
.end method

.method private getMaxLayersString()Ljava/lang/String;
    .locals 7

    .line 712
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v0

    .line 713
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v1

    .line 714
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getAdjustedCanvasScale(FF)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    .line 716
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {v0, v3, v4, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getCanvasDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;

    move-result-object v0

    .line 717
    iget v1, v0, Lcom/brakefield/painter/video/Dimensions;->width:I

    .line 718
    iget v0, v0, Lcom/brakefield/painter/video/Dimensions;->height:I

    move v6, v1

    move v1, v0

    move v0, v6

    .line 720
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->getMaxLayersForSize(II)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPixelResolutionString()Ljava/lang/String;
    .locals 2

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f120a31

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWidthForAspectRatio(FF)F
    .locals 0

    mul-float/2addr p1, p2

    return p1
.end method

.method private hidePresets()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->beginDelayedFadeIn(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 759
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->setCustomSettingsVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->addPresetButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->presetCollectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->presetsButton:Landroid/widget/Button;

    const v1, 0x7f1209fc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private isLandscape()Z
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPortrait()Z
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private rotateDimensions()V
    .locals 3

    .line 705
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v0

    .line 706
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setValue(F)V

    .line 707
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setValue(F)V

    .line 708
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method private saveCurrentPreset()V
    .locals 4

    .line 777
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->activity:Landroid/app/Activity;

    const v1, 0x7f1200f2

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    const v3, 0x7f12099b

    invoke-static {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method private setCustomSettingsVisibility(I)V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->unitsDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->maxLayersInfo:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->landscapeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->portraitButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showPresets()V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->beginDelayedFadeIn(Landroid/view/ViewGroup;)V

    const/16 v0, 0x8

    .line 748
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->setCustomSettingsVisibility(I)V

    const v0, 0x7f120a60

    .line 749
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->addPresetButton:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->formatMeasurementValueString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->formatMeasurementValueString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->abbreviation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->addPresetButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->presetCollectionView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->presetsButton:Landroid/widget/Button;

    const v1, 0x7f1200f2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Boolean;)V
    .locals 0

    .line 436
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets()V

    goto :goto_0

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->hidePresets()V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Integer;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->unitsDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    .line 441
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 442
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    .line 446
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 447
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    return-void
.end method

.method synthetic lambda$new$10$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/String;)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->pixelResolutionText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$new$11$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 495
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->pixelResolutionText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    goto :goto_0

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->pixelResolutionText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$12$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/String;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasTooLargeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$new$13$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 500
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasTooLargeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasTooLargeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$2$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/String;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthUnitsLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightUnitsLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$new$3$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Float;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->formatMeasurementValueString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$4$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Float;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->formatMeasurementValueString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$5$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Integer;)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->dpiEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->dpiEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "%d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$6$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Float;)V
    .locals 1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->lockRatioButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 471
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->lockRatioLinkTop:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 472
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->lockRatioLinkBottom:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 474
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->lockRatioButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 475
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->lockRatioLinkTop:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 476
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->lockRatioLinkBottom:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$7$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 480
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->landscapeButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->landscapeButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$8$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 484
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->portraitButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->portraitButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$9$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/String;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->maxLayersInfo:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$saveCurrentPreset$22$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/String;)V
    .locals 7

    .line 778
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->presetsSection:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->access$2000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

    move-result-object v1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getType()I

    move-result v3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v4

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v5

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getDPI()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->savePreset(Ljava/lang/String;IFFI)V

    .line 779
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->presetsSection:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->refresh()V

    return-void
.end method

.method synthetic lambda$setup$14$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Landroid/net/Uri;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->imageViewInline:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method synthetic lambda$setup$15$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Float;)V
    .locals 2

    .line 511
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInline:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$2100(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Landroid/view/View;Z)V

    return-void
.end method

.method synthetic lambda$setup$16$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Ljava/lang/Integer;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInline:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method synthetic lambda$setup$17$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Landroid/view/View;)V
    .locals 0

    .line 515
    iget-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    .line 516
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method synthetic lambda$setup$18$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Landroid/view/View;)V
    .locals 0

    .line 614
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 615
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 616
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 617
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->rotateDimensions()V

    .line 618
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setup$19$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Landroid/view/View;)V
    .locals 0

    .line 624
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 625
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 626
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 627
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->rotateDimensions()V

    .line 628
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setup$20$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Landroid/view/View;)V
    .locals 1

    .line 634
    iget p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->lockAspectRatio:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->getAspectRatio()F

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->lockAspectRatio:F

    goto :goto_0

    .line 635
    :cond_0
    iput v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->lockAspectRatio:F

    .line 636
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method synthetic lambda$setup$21$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$DimensionsSection(Landroid/view/View;)V
    .locals 0

    .line 642
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->saveCurrentPreset()V

    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 6

    .line 506
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->activity:Landroid/app/Activity;

    .line 507
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getWidthMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    .line 508
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getHeightMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    .line 510
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->imageViewInline:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->addObserveChange(Ljava/lang/Object;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    .line 511
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1600(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInline:Landroidx/cardview/widget/CardView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->addObserveChange(Ljava/lang/Object;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    .line 512
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1700(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInline:Landroidx/cardview/widget/CardView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->addObserveChange(Ljava/lang/Object;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    .line 514
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->presetsButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    new-instance v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v3, 0x7f1209f1

    .line 520
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v3, 0x7f120215

    .line 521
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v3, 0x7f120947

    .line 522
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v3, 0x7f1200a9

    .line 523
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    .line 526
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->unitsDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    .line 541
    invoke-virtual {v3}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 526
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->widthEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 568
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 593
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->dpiEditText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 613
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->landscapeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->landscapeButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->portraitButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->portraitButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 633
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->lockRatioButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->lockRatioButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 640
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->presetsSection:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->setup(Landroid/app/Activity;)V

    .line 642
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->addPresetButton:Landroid/widget/Button;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->addPresetButton:Landroid/widget/Button;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getScreenBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method public updateSection()V
    .locals 6

    .line 649
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getType()I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    if-eqz v1, :cond_0

    .line 652
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getItemPositionFromReturnObject(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeMeasurementUnits:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 659
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->height:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 660
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeDpi:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getDPI()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 661
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeUnitAbbreviation:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->width:Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->abbreviation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 662
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeLockAspectRatio:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->lockAspectRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 663
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeIsLandscape:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->isLandscape()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 664
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeIsPortrait:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->isPortrait()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 665
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeMaxLayersText:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->getMaxLayersString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 666
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observePixelResolutionText:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->getPixelResolutionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 667
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeShowPresets:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-boolean v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 668
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeShowPixelResolution:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-boolean v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 669
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->getCanvasTooLargeString()Ljava/lang/String;

    move-result-object v1

    .line 670
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeCanvasToolLargeText:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 671
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->observeShowCanvasToolLarge:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-boolean v5, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 673
    iget-boolean v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->dpiLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->dpiField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    goto :goto_2

    .line 677
    :cond_3
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->dpiLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->dpiField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 681
    :goto_2
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->showPresets:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->presetsSection:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->updateSection()V

    :cond_4
    return-void
.end method
