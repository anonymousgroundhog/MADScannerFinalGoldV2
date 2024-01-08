.class public final synthetic Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/billing/ByteBot;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/billing/Purchases;

.field public final synthetic f$2:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/billing/ByteBot;Lcom/brakefield/infinitestudio/billing/Purchases;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/billing/ByteBot;

    iput-object p2, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/infinitestudio/billing/Purchases;

    iput-object p3, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;->f$2:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onResults(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/billing/ByteBot;

    iget-object v1, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/infinitestudio/billing/Purchases;

    iget-object v2, p0, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;->f$2:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/billing/ByteBot;->lambda$signInCurrentUserAsync$0$com-brakefield-painter-billing-ByteBot(Lcom/brakefield/infinitestudio/billing/Purchases;Landroid/content/SharedPreferences;ZLjava/lang/String;)V

    return-void
.end method
