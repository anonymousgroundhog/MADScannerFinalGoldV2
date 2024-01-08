.class public Lcom/brakefield/painter/activities/ActivitySettings;
.super Lcom/brakefield/infinitestudio/activities/MasterActivity;
.source "ActivitySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;,
        Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;
    }
.end annotation


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

.field private loginLauncher:Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;

.field private prefs:Landroid/content/SharedPreferences;

.field private final quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

.field private sections:[Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;

.field private session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 83
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;

    .line 87
    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->sections:[Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;

    .line 106
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/QuickHelp;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    .line 108
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    return-void
.end method

.method static synthetic access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->binding:Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/ui/QuickHelp;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->refreshSections()V

    return-void
.end method

.method static synthetic access$1800(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->loginLauncher:Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private addVersionLabel()V
    .locals 5

    const-string v0, ""

    .line 146
    new-instance v1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 149
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBetaVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Beta"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 159
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070335

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v0

    .line 160
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextSize(F)V

    .line 162
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 165
    invoke-virtual {p0, v1, v0}, Lcom/brakefield/painter/activities/ActivitySettings;->addTitleBarContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshSections()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->sections:[Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 139
    invoke-interface {v3}, Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;->refresh()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->binding:Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->copyrightText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 126
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->binding:Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    .line 127
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->prefs:Landroid/content/SharedPreferences;

    .line 128
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->sections:[Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 129
    invoke-interface {v3}, Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;->setup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->addVersionLabel()V

    .line 132
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->refreshSections()V

    .line 134
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showQuickHelp()Z

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->visualizeQuickHelpCoverage()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/brakefield/painter/ui/QuickHelp;->setup(Landroid/view/ViewGroup;Lcom/brakefield/painter/app/PainterApp;ZZ)V

    return-void
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120a86

    .line 121
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p1

    .line 115
    new-instance v0, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;-><init>(Landroidx/activity/result/ActivityResultRegistry;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->loginLauncher:Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;

    .line 116
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings;->loginLauncher:Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 169
    invoke-super {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings;->refreshSections()V

    return-void
.end method
