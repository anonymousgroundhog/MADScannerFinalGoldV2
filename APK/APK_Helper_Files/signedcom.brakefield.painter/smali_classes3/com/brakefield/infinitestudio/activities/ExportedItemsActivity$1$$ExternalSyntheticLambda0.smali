.class public final synthetic Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;

    invoke-virtual {v0, v1, p1, p2}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->lambda$onItemLongClick$0$com-brakefield-infinitestudio-activities-ExportedItemsActivity$1(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
