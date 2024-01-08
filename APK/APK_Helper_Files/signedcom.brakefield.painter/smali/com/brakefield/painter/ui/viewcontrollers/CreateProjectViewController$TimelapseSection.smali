.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;
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
    name = "TimelapseSection"
.end annotation


# instance fields
.field private final observeTimelapseEnabled:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeTimelapseQuality:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeTimelapseResolution:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observeTimelapseShowNavigation:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field playbackManager:Lcom/brakefield/painter/PlaybackManager;

.field spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V
    .locals 1

    .line 1067
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    new-instance p1, Lcom/brakefield/painter/PlaybackManager;

    invoke-direct {p1}, Lcom/brakefield/painter/PlaybackManager;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    .line 1072
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->observeTimelapseEnabled:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1077
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->observeTimelapseQuality:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1078
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->observeTimelapseResolution:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1079
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->observeTimelapseShowNavigation:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V
    .locals 0

    .line 1067
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;I)V
    .locals 0

    .line 1067
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->updateTimelapseDimensions(I)V

    return-void
.end method

.method private getTimelapseDimension(I)Lcom/brakefield/painter/video/Dimensions;
    .locals 4

    .line 1170
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getWidthMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v0

    .line 1171
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getHeightMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v1

    .line 1172
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getAdjustedCanvasScale(FF)F

    move-result v2

    .line 1173
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {v3, v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getCanvasDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;

    move-result-object v0

    .line 1174
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    iget v2, v0, Lcom/brakefield/painter/video/Dimensions;->width:I

    int-to-float v2, v2

    iget v0, v0, Lcom/brakefield/painter/video/Dimensions;->height:I

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {v1, v2, v0, p1}, Lcom/brakefield/painter/PlaybackManager;->getDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;

    move-result-object p1

    .line 1175
    iget v0, p1, Lcom/brakefield/painter/video/Dimensions;->width:I

    .line 1176
    iget p1, p1, Lcom/brakefield/painter/video/Dimensions;->height:I

    .line 1177
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    invoke-virtual {v1, v0, p1}, Lcom/brakefield/painter/PlaybackManager;->getBestCodecsFor(II)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 1178
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/video/VideoCodec;

    .line 1179
    invoke-virtual {v1, v0, p1}, Lcom/brakefield/painter/video/VideoCodec;->getFitDimensions(II)Lcom/brakefield/painter/video/Dimensions;

    move-result-object p1

    return-object p1
.end method

.method private getTimelapseResolutionString()Ljava/lang/String;
    .locals 3

    .line 1165
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseQuality()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->getTimelapseDimension(I)Lcom/brakefield/painter/video/Dimensions;

    move-result-object v0

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/brakefield/painter/video/Dimensions;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/brakefield/painter/video/Dimensions;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateTimelapseDimensions(I)V
    .locals 2

    .line 1183
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->getTimelapseDimension(I)Lcom/brakefield/painter/video/Dimensions;

    move-result-object p1

    .line 1184
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v0

    iget v1, p1, Lcom/brakefield/painter/video/Dimensions;->width:I

    iget p1, p1, Lcom/brakefield/painter/video/Dimensions;->height:I

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseDimens(II)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$TimelapseSection(Ljava/lang/Boolean;)V
    .locals 2

    .line 1073
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->timelapseSettings:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->timelapseSettings:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1075
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->timelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$TimelapseSection(Ljava/lang/Integer;)V
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->videoQualityDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    return-void
.end method

.method synthetic lambda$new$2$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$TimelapseSection(Ljava/lang/String;)V
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->resolutionInfo:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$3$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$TimelapseSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->showNavigationToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    return-void
.end method

.method synthetic lambda$setup$4$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$TimelapseSection(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1136
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseEnabled(Z)V

    .line 1137
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method synthetic lambda$setup$5$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$TimelapseSection(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1142
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseShowsUserNavigation(Z)V

    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    .line 1089
    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const/16 v3, 0x500

    .line 1090
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "720p"

    invoke-direct {v2, v5, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const/16 v6, 0x780

    .line 1091
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "1080p"

    invoke-direct {v2, v7, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x1

    aput-object v2, v1, v6

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const/16 v6, 0xa00

    .line 1092
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "1440p"

    invoke-direct {v2, v7, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const/16 v6, 0xf00

    .line 1093
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "4K"

    invoke-direct {v2, v7, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 1096
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_0
    if-ge v6, v0, :cond_1

    .line 1097
    aget-object v7, v1, v6

    .line 1098
    iget-object v8, v7, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;->returnObject:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1099
    iget-object v9, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    invoke-virtual {v9, v8, v8}, Lcom/brakefield/painter/PlaybackManager;->getBestCodecsFor(II)Ljava/util/List;

    move-result-object v9

    .line 1100
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1101
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/painter/video/VideoCodec;

    .line 1102
    invoke-virtual {v9, v8, v8}, Lcom/brakefield/painter/video/VideoCodec;->getFitDimensions(II)Lcom/brakefield/painter/video/Dimensions;

    move-result-object v9

    .line 1103
    invoke-virtual {v9, v8, v8}, Lcom/brakefield/painter/video/Dimensions;->getFitScale(II)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 1105
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1109
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1110
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    invoke-virtual {v0, v3, v3}, Lcom/brakefield/painter/PlaybackManager;->getBestCodecsFor(II)Ljava/util/List;

    move-result-object v0

    .line 1111
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/video/VideoCodec;

    .line 1112
    iget-object v1, v0, Lcom/brakefield/painter/video/VideoCodec;->supportedWidth:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1113
    iget-object v0, v0, Lcom/brakefield/painter/video/VideoCodec;->supportedHeight:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1114
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1115
    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_2
    new-instance v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    new-array v1, v4, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    .line 1120
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->videoQualityDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;)V

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    .line 1132
    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseQuality()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1120
    invoke-static {p1, v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 1134
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->timelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;)V

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    .line 1138
    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isTimelapseEnabled()Z

    move-result v1

    .line 1134
    invoke-static {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 1140
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->showNavigationToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;)V

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    .line 1143
    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isTimelapseEnabled()Z

    move-result v1

    .line 1140
    invoke-static {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 1145
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->updateSection()V

    return-void
.end method

.method public updateSection()V
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseQuality()I

    move-result v0

    .line 1153
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getItemPositionFromReturnObject(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->observeTimelapseQuality:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->observeTimelapseEnabled:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isTimelapseEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1160
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->observeTimelapseResolution:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->getTimelapseResolutionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1161
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->observeTimelapseShowNavigation:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseShowsUserNavigation()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
