.class public final synthetic Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/FontFamily;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/FontFamily$Font;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;Lcom/brakefield/infinitestudio/FontFamily;Lcom/brakefield/infinitestudio/FontFamily$Font;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/FontFamily;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/infinitestudio/FontFamily$Font;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/FontFamily;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/infinitestudio/FontFamily$Font;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->lambda$update$0$com-brakefield-infinitestudio-activities-FontsActivity$FontViewHolder(Lcom/brakefield/infinitestudio/FontFamily;Lcom/brakefield/infinitestudio/FontFamily$Font;)V

    return-void
.end method
