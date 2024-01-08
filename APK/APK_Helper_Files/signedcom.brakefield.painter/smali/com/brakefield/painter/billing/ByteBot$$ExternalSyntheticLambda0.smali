.class public final synthetic Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/billing/ByteBot;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Lcom/brakefield/infinitestudio/billing/Purchases;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/billing/ByteBot;Landroid/content/SharedPreferences;Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/Purchases;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/billing/ByteBot;

    iput-object p2, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;->f$3:Lcom/brakefield/infinitestudio/billing/Purchases;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/billing/ByteBot;

    iget-object v1, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;->f$3:Lcom/brakefield/infinitestudio/billing/Purchases;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/painter/billing/ByteBot;->lambda$signInCurrentUserAsync$1$com-brakefield-painter-billing-ByteBot(Landroid/content/SharedPreferences;Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/Purchases;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
