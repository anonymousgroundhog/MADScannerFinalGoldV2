.class public Lcom/brakefield/painter/activities/FiltersActivity$Launcher;
.super Ljava/lang/Object;
.source "FiltersActivity.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/FiltersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Launcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/FiltersActivity$Launcher$OnPickListener;
    }
.end annotation


# instance fields
.field private filtersLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private onPicked:Lcom/brakefield/painter/activities/FiltersActivity$Launcher$OnPickListener;

.field private final registry:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;->registry:Landroidx/activity/result/ActivityResultRegistry;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-brakefield-painter-activities-FiltersActivity$Launcher(Ljava/lang/Integer;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;->onPicked:Lcom/brakefield/painter/activities/FiltersActivity$Launcher$OnPickListener;

    invoke-interface {v0, p1}, Lcom/brakefield/painter/activities/FiltersActivity$Launcher$OnPickListener;->apply(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;->registry:Landroidx/activity/result/ActivityResultRegistry;

    const-class v1, Lcom/brakefield/painter/activities/FiltersActivity$PickFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/activities/FiltersActivity$PickFilter;

    invoke-direct {v2}, Lcom/brakefield/painter/activities/FiltersActivity$PickFilter;-><init>()V

    new-instance v3, Lcom/brakefield/painter/activities/FiltersActivity$Launcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/activities/FiltersActivity$Launcher$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/FiltersActivity$Launcher;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;->filtersLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public pickFilter(Lcom/brakefield/painter/activities/FiltersActivity$Launcher$OnPickListener;)V
    .locals 1

    .line 243
    iput-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;->onPicked:Lcom/brakefield/painter/activities/FiltersActivity$Launcher$OnPickListener;

    .line 244
    iget-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$Launcher;->filtersLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
