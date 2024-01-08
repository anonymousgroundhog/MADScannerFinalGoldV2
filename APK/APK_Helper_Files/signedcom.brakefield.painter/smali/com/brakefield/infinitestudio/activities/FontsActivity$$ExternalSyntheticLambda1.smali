.class public final synthetic Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/apis/API$ItemHandler;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/activities/FontsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/activities/FontsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/activities/FontsActivity;

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/activities/FontsActivity;

    check-cast p1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/activities/FontsActivity;->lambda$loadGoogleFonts$1$com-brakefield-infinitestudio-activities-FontsActivity(Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;)V

    return-void
.end method
