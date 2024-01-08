.class Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestingSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 1024
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method

.method private getDebugInfo()Ljava/lang/String;
    .locals 12

    .line 1063
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getDebugInfo()Ljava/lang/String;

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n---------------------------------------\nPreferred Video Encoder:\n---------------------------------------\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1092
    new-instance v1, Lcom/brakefield/painter/video/VideoCodecs;

    invoke-direct {v1}, Lcom/brakefield/painter/video/VideoCodecs;-><init>()V

    .line 1094
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "video/3gpp"

    .line 1095
    invoke-virtual {v1, v3}, Lcom/brakefield/painter/video/VideoCodecs;->getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v3, "video/avc"

    .line 1096
    invoke-virtual {v1, v3}, Lcom/brakefield/painter/video/VideoCodecs;->getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v3, "video/hevc"

    .line 1097
    invoke-virtual {v1, v3}, Lcom/brakefield/painter/video/VideoCodecs;->getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v3, "video/av01"

    .line 1098
    invoke-virtual {v1, v3}, Lcom/brakefield/painter/video/VideoCodecs;->getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1099
    invoke-virtual {v1, v2}, Lcom/brakefield/painter/video/VideoCodecs;->getEncoders(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1101
    new-instance v2, Lcom/brakefield/painter/PlaybackManager;

    invoke-direct {v2}, Lcom/brakefield/painter/PlaybackManager;-><init>()V

    .line 1102
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackWidth()I

    move-result v3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/brakefield/painter/PlaybackManager;->getBestCodecsFor(II)Ljava/util/List;

    move-result-object v2

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timelapse is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackFramerate()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "fps \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 1111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v6, "Height: "

    const-string v7, "Width: "

    const-string v8, ")\n"

    const-string v9, " ("

    if-eqz v5, :cond_0

    const-string v2, "None preferred\n\n"

    .line 1114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1117
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/painter/video/VideoCodec;

    const-string v10, "---------------------------------------\n\n"

    .line 1118
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lcom/brakefield/painter/video/VideoCodec;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/brakefield/painter/video/VideoCodec;->mimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/brakefield/painter/video/VideoCodec;->supportedWidth:Landroid/util/Range;

    invoke-virtual {v11}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/brakefield/painter/video/VideoCodec;->widthAlignment:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/brakefield/painter/video/VideoCodec;->supportedHeight:Landroid/util/Range;

    invoke-virtual {v11}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/brakefield/painter/video/VideoCodec;->heightAlignment:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackWidth()I

    move-result v10

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackHeight()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Lcom/brakefield/painter/video/VideoCodec;->getFitDimensions(II)Lcom/brakefield/painter/video/Dimensions;

    move-result-object v5

    .line 1125
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Fit Dimensions: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v5, Lcom/brakefield/painter/video/Dimensions;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v5, v5, Lcom/brakefield/painter/video/Dimensions;->height:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n---------------------------------------\n\n"

    .line 1126
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    :goto_1
    const-string v2, "---------------------------------------\nSupported Video Encoders:\n---------------------------------------\n\n"

    .line 1132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/video/VideoCodec;

    .line 1138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/brakefield/painter/video/VideoCodec;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v2, Lcom/brakefield/painter/video/VideoCodec;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/brakefield/painter/video/VideoCodec;->supportedWidth:Landroid/util/Range;

    invoke-virtual {v10}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v2, Lcom/brakefield/painter/video/VideoCodec;->widthAlignment:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/brakefield/painter/video/VideoCodec;->supportedHeight:Landroid/util/Range;

    invoke-virtual {v10}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v2, Lcom/brakefield/painter/video/VideoCodec;->heightAlignment:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Frame rate: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/brakefield/painter/video/VideoCodec;->supportedFrameRate:Landroid/util/Range;

    invoke-virtual {v10}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Bitrate: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/brakefield/painter/video/VideoCodec;->supportedBitrate:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1146
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setup$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1033
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->debugPerspective(Z)V

    return-void
.end method

.method static synthetic lambda$setup$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1036
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setUseOldBleed(Z)V

    return-void
.end method

.method private setupLowLatencyTests()V
    .locals 4

    .line 1151
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->lowLatencyDrawingToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREFS_USE_LOW_LATENCY_RENDERER_1"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    .line 1152
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->lowLatencyDrawingToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$2$com-brakefield-painter-activities-ActivitySettings$TestingSettingsSection(Landroid/view/View;)V
    .locals 2

    .line 1054
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1055
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v0, 0x7f1209b7

    .line 1056
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1057
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$setupLowLatencyTests$3$com-brakefield-painter-activities-ActivitySettings$TestingSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFS_USE_LOW_LATENCY_RENDERER_1"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1156
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1209b7

    const/4 v0, 0x0

    const-string v1, "Restart the application to apply this setting."

    invoke-static {p1, v1, p2, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setup()V
    .locals 4

    .line 1029
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBetaVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1031
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBetaVersion()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->debugCirclePerspectiveToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1034
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->debugCirclePerspectiveToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getDebugPerspective()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    .line 1036
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->useOldWatercolorsToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1037
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->useOldWatercolorsToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUseOldBleed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    .line 1039
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->segmentPreviewDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const v3, 0x7f030004

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setAdapter(Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;)V

    .line 1040
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->segmentPreviewDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1048
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->segmentPreviewDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPreviewSegmentsStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    .line 1050
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->setupLowLatencyTests()V

    .line 1052
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->debugInfoButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1053
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->betaTestingSettings:Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BetaTestingSettingsBinding;->debugInfoButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
