.class public final synthetic Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/StartupMigrationBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/StartupMigrationBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/databinding/StartupMigrationBinding;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityStartup$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/databinding/StartupMigrationBinding;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityStartup;->lambda$showMigrationScreen$10(Lcom/brakefield/painter/databinding/StartupMigrationBinding;)V

    return-void
.end method
