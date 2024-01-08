.class public Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Launcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$OnLoginListener;
    }
.end annotation


# instance fields
.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private onLogin:Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$OnLoginListener;

.field private final registry:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;)V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;->registry:Landroidx/activity/result/ActivityResultRegistry;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-brakefield-infinitestudio-account-LoginActivity$Launcher(Ljava/lang/String;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;->onLogin:Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$OnLoginListener;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$OnLoginListener;->handle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loginUser(Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$OnLoginListener;)V
    .locals 1

    .line 484
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;->onLogin:Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$OnLoginListener;

    .line 485
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;->registry:Landroidx/activity/result/ActivityResultRegistry;

    const-class v1, Lcom/brakefield/infinitestudio/account/LoginActivity$LoginUser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/account/LoginActivity$LoginUser;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/account/LoginActivity$LoginUser;-><init>()V

    new-instance v3, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method
