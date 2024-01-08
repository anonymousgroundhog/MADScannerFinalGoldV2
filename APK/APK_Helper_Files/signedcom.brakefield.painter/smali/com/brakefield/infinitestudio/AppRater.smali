.class public Lcom/brakefield/infinitestudio/AppRater;
.super Ljava/lang/Object;
.source "AppRater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$promptReview$1(Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showRateDialog$0(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/play/core/tasks/Task;)V
    .locals 1

    .line 23
    invoke-virtual {p2}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p2}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/review/ReviewInfo;

    .line 25
    invoke-static {p0, p1, p2}, Lcom/brakefield/infinitestudio/AppRater;->promptReview(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/play/core/review/ReviewInfo;)V

    :cond_0
    return-void
.end method

.method public static launch(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/AppRater;->showRateDialog(Landroid/app/Activity;Landroid/content/SharedPreferences$Editor;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static promptReview(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/play/core/review/ReviewInfo;)V
    .locals 0

    .line 31
    invoke-interface {p1, p0, p2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    .line 32
    new-instance p1, Lcom/brakefield/infinitestudio/AppRater$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/AppRater$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private static showRateDialog(Landroid/app/Activity;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 20
    invoke-static {p0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/brakefield/infinitestudio/AppRater$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/AppRater$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method
