.class public Lcom/brakefield/painter/activities/ActivityStartup;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityStartup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivityStartup$AppSettingsLauncher;,
        Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;
    }
.end annotation


# instance fields
.field ChangeAppSettings:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field FreeUpStorage:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field RequestExternalStoragePermissions:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/brakefield/painter/activities/ActivityStartup$AppSettingsLauncher;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityStartup$AppSettingsLauncher;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    new-instance v1, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/activities/ActivityStartup;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityStartup;->ChangeAppSettings:Landroidx/activity/result/ActivityResultLauncher;

    .line 42
    new-instance v0, Lcom/brakefield/infinitestudio/FileManager$FreeUpStorageLauncher;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/FileManager$FreeUpStorageLauncher;-><init>()V

    new-instance v1, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/activities/ActivityStartup;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityStartup;->FreeUpStorage:Landroidx/activity/result/ActivityResultLauncher;

    .line 49
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/activities/ActivityStartup;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityStartup;->RequestExternalStoragePermissions:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/activities/ActivityStartup;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->openMain()V

    return-void
.end method

.method private handleShareIn()Z
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/brakefield/painter/activities/ActivityMain;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    sput-object v0, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/activities/ActivityStartup;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method private hasExternalStoragePermissions(Z)Z
    .locals 5

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/brakefield/painter/activities/ActivityStartup;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    move v0, v2

    .line 111
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityStartup;->RequestExternalStoragePermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_3
    return v2

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$showMigrationScreen$10(Lcom/brakefield/painter/databinding/StartupMigrationBinding;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->messageLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setMaxLines(I)V

    .line 163
    iget-object v0, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->messageLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/databinding/StartupMigrationBinding;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$showMigrationScreen$9(Lcom/brakefield/painter/databinding/StartupMigrationBinding;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->messageLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->getLineCount()I

    move-result v0

    .line 165
    iget-object p0, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->messageLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setMaxLines(I)V

    return-void
.end method

.method private migrateToScopedStorage(Lcom/brakefield/painter/databinding/StartupMigrationBinding;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;)V
    .locals 2

    .line 171
    iget-object v0, p1, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->progressLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f1209bf

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;Landroid/widget/ProgressBar;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private openMain()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->requiresScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->usingScopedStorage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {p0}, Lcom/brakefield/infinitestudio/FileManager;->getMigrationTaskForScopedStorage(Landroid/content/Context;)Lcom/brakefield/infinitestudio/FileManager$MigrationTask;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/FileManager$MigrationTask;->needsMigration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityStartup;->showMigrationScreen(Lcom/brakefield/infinitestudio/FileManager$MigrationTask;)V

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;->SCOPED_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/FileManager;->setStorageDirectory(Landroid/content/Context;Lcom/brakefield/infinitestudio/FileManager$StorageType;)V

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->handleShareIn()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 87
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brakefield/painter/activities/ActivityMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/activities/ActivityStartup;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->finish()V

    return-void
.end method

.method private requiresScopedStorage()Z
    .locals 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showMigrationScreen(Lcom/brakefield/infinitestudio/FileManager$MigrationTask;)V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/StartupMigrationBinding;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/brakefield/painter/activities/ActivityStartup;->setContentView(Landroid/view/View;)V

    .line 150
    iget-object v1, v0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->continueButton:Landroid/widget/Button;

    new-instance v2, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p1}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;Lcom/brakefield/painter/databinding/StartupMigrationBinding;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, v0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->learnMoreButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, v0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->messageLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/StartupMigrationBinding;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private showReasonForNeededStorage()V
    .locals 6

    const v1, 0x7f120a1e

    const v2, 0x7f1209b7

    const v3, 0x7f120a33

    .line 126
    new-instance v4, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    new-instance v5, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private showReasonForPermissions()V
    .locals 6

    const v1, 0x7f120a1c

    const v2, 0x7f120a86

    const v3, 0x7f120a33

    .line 122
    new-instance v4, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    new-instance v5, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/activities/ActivityStartup;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-activities-ActivityStartup(Ljava/lang/Void;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivityStartup;->hasExternalStoragePermissions(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->showReasonForPermissions()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->openMain()V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-activities-ActivityStartup(Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->openMain()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->showReasonForNeededStorage()V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$2$com-brakefield-painter-activities-ActivityStartup(Ljava/util/Map;)V
    .locals 3

    .line 0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 51
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->openMain()V

    goto :goto_2

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->showReasonForPermissions()V

    :goto_2
    return-void
.end method

.method synthetic lambda$showMigrationScreen$7$com-brakefield-painter-activities-ActivityStartup(Lcom/brakefield/painter/databinding/StartupMigrationBinding;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p3, p1, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->group1:Landroidx/constraintlayout/widget/Group;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 152
    iget-object p3, p1, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->group2:Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/activities/ActivityStartup;->migrateToScopedStorage(Lcom/brakefield/painter/databinding/StartupMigrationBinding;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;)V

    return-void
.end method

.method synthetic lambda$showMigrationScreen$8$com-brakefield-painter-activities-ActivityStartup(Landroid/view/View;)V
    .locals 2

    .line 156
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_WEBSITE_URL"

    const-string v1, "https://www.infinitestudio.art/scoped_storage.php"

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_SHOW_BACK_NAVIGATION"

    const/4 v1, 0x1

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityStartup;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$showReasonForNeededStorage$5$com-brakefield-painter-activities-ActivityStartup(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->openMain()V

    return-void
.end method

.method synthetic lambda$showReasonForNeededStorage$6$com-brakefield-painter-activities-ActivityStartup(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->finish()V

    return-void
.end method

.method synthetic lambda$showReasonForPermissions$3$com-brakefield-painter-activities-ActivityStartup(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityStartup;->ChangeAppSettings:Landroidx/activity/result/ActivityResultLauncher;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$showReasonForPermissions$4$com-brakefield-painter-activities-ActivityStartup(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->init(Landroid/app/Activity;)V

    .line 67
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->usingScopedStorage()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivityStartup;->hasExternalStoragePermissions(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityStartup;->openMain()V

    :cond_1
    return-void
.end method
