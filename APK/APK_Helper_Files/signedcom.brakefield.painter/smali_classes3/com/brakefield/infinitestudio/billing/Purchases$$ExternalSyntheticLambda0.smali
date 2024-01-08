.class public final synthetic Lcom/brakefield/infinitestudio/billing/Purchases$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/billing/Purchases;->$r8$lambda$CHWstRHg0TK07Zr_zmgi6t4Ot-I([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
