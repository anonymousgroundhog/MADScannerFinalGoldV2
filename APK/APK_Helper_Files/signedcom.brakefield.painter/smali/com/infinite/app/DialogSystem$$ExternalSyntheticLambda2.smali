.class public final synthetic Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda2;->f$0:J

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-wide v0, p0, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda2;->f$0:J

    invoke-static {v0, v1, p1}, Lcom/infinite/app/DialogSystem;->lambda$showAlertDialog$0(JLandroid/content/DialogInterface;)V

    return-void
.end method
