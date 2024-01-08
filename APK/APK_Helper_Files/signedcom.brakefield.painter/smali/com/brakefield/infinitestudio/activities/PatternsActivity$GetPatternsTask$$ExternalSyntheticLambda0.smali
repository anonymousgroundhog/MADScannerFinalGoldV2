.class public final synthetic Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    check-cast p2, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->lambda$onPostExecute$0(Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)I

    move-result p1

    return p1
.end method
