.class public final synthetic Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityStartup;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/StartupMigrationBinding;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/FileManager$MigrationTask;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityStartup;Lcom/brakefield/painter/databinding/StartupMigrationBinding;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/activities/ActivityStartup;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;->f$1:Lcom/brakefield/painter/databinding/StartupMigrationBinding;

    iput-object p3, p0, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;->f$2:Lcom/brakefield/infinitestudio/FileManager$MigrationTask;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/activities/ActivityStartup;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;->f$1:Lcom/brakefield/painter/databinding/StartupMigrationBinding;

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda9;->f$2:Lcom/brakefield/infinitestudio/FileManager$MigrationTask;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/activities/ActivityStartup;->lambda$showMigrationScreen$7$com-brakefield-painter-activities-ActivityStartup(Lcom/brakefield/painter/databinding/StartupMigrationBinding;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;Landroid/view/View;)V

    return-void
.end method
