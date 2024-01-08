.class public Lcom/infinite/app/DialogSystem;
.super Ljava/lang/Object;
.source "DialogSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infinite/app/DialogSystem$Dialog;
    }
.end annotation


# static fields
.field public static final ALERT_DIALOG_TYPE:I = 0x0

.field public static final TEXT_INPUT_DIALOG_TYPE:I = 0x1


# instance fields
.field private final registeredDialogs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/infinite/app/DialogSystem$Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/infinite/app/DialogSystem;->registeredDialogs:Landroid/util/ArrayMap;

    return-void
.end method

.method private bindNegativeButton(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_2

    .line 106
    invoke-static {p2, p3, p4, p5}, Lcom/infinite/app/DialogSystem;->getDialogButtonLabel(JJ)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p2, v2}, Lcom/infinite/app/CoreAppStrings;->processString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 111
    :goto_0
    invoke-static {p4, p5}, Lcom/infinite/app/DialogSystem;->getDialogButtonClickInteraction(J)J

    move-result-wide p3

    cmp-long p5, p3, v0

    if-eqz p5, :cond_1

    .line 112
    new-instance p5, Lcom/infinite/app/ui/interactions/ClickInteraction;

    invoke-direct {p5, p3, p4}, Lcom/infinite/app/ui/interactions/ClickInteraction;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    .line 114
    :goto_1
    new-instance p3, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda0;

    invoke-direct {p3, p5}, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda0;-><init>(Lcom/infinite/app/ui/interactions/ClickInteraction;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    :cond_2
    return-void
.end method

.method private bindPositiveButton(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_2

    .line 87
    invoke-static {p2, p3, p4, p5}, Lcom/infinite/app/DialogSystem;->getDialogButtonLabel(JJ)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p2, v2}, Lcom/infinite/app/CoreAppStrings;->processString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x104000a

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 92
    :goto_0
    invoke-static {p4, p5}, Lcom/infinite/app/DialogSystem;->getDialogButtonClickInteraction(J)J

    move-result-wide p3

    cmp-long p5, p3, v0

    if-eqz p5, :cond_1

    .line 93
    new-instance p5, Lcom/infinite/app/ui/interactions/ClickInteraction;

    invoke-direct {p5, p3, p4}, Lcom/infinite/app/ui/interactions/ClickInteraction;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    .line 95
    :goto_1
    new-instance p3, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda1;

    invoke-direct {p3, p5}, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda1;-><init>(Lcom/infinite/app/ui/interactions/ClickInteraction;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    :cond_2
    return-void
.end method

.method private static native deleteDialog(J)V
.end method

.method private static native getAlertDialogMessage(JJ)Ljava/lang/String;
.end method

.method private static native getAlertDialogMessageParamAt(JI)Ljava/lang/String;
.end method

.method private static native getAlertDialogMessageParamCount(J)I
.end method

.method private static native getAlertDialogTitle(JJ)Ljava/lang/String;
.end method

.method private static native getDialogButtonClickInteraction(J)J
.end method

.method private static native getDialogButtonLabel(JJ)Ljava/lang/String;
.end method

.method private static native getDialogConfirmButton(J)J
.end method

.method private static native getDialogDismissButton(J)J
.end method

.method private static native getDialogType(J)I
.end method

.method static synthetic lambda$bindNegativeButton$2(Lcom/infinite/app/ui/interactions/ClickInteraction;Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/infinite/app/ui/interactions/ClickInteraction;->onClick(JII)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$bindPositiveButton$1(Lcom/infinite/app/ui/interactions/ClickInteraction;Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/infinite/app/ui/interactions/ClickInteraction;->onClick(JII)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showAlertDialog$0(JLandroid/content/DialogInterface;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/infinite/app/DialogSystem;->deleteDialog(J)V

    return-void
.end method

.method private showAlertDialog(Landroid/content/Context;JJ)V
    .locals 7

    .line 50
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v6, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p2, p3, p4, p5}, Lcom/infinite/app/DialogSystem;->getAlertDialogTitle(JJ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    .line 54
    invoke-static {p1, v0, v2}, Lcom/infinite/app/CoreAppStrings;->processString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v6, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 58
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/infinite/app/DialogSystem;->getAlertDialogMessage(JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 61
    invoke-static {p4, p5}, Lcom/infinite/app/DialogSystem;->getAlertDialogMessageParamCount(J)I

    move-result v2

    if-nez v2, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {p1, v0, v1}, Lcom/infinite/app/CoreAppStrings;->processString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 66
    :cond_1
    new-array v3, v2, [Ljava/lang/String;

    :goto_0
    if-ge v1, v2, :cond_2

    .line 68
    invoke-static {p4, p5, v1}, Lcom/infinite/app/DialogSystem;->getAlertDialogMessageParamAt(JI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {p1, v0, v3}, Lcom/infinite/app/CoreAppStrings;->processString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 73
    :goto_1
    invoke-virtual {v6, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 76
    :cond_3
    new-instance p1, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4, p5}, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {v6, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 78
    invoke-static {p4, p5}, Lcom/infinite/app/DialogSystem;->getDialogConfirmButton(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/infinite/app/DialogSystem;->bindPositiveButton(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;JJ)V

    .line 79
    invoke-static {p4, p5}, Lcom/infinite/app/DialogSystem;->getDialogDismissButton(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/infinite/app/DialogSystem;->bindNegativeButton(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;JJ)V

    .line 81
    invoke-virtual {v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showTextInputDialog(Landroid/content/Context;JJ)V
    .locals 0

    return-void
.end method


# virtual methods
.method public id()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public register(ILcom/infinite/app/DialogSystem$Dialog;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/infinite/app/DialogSystem;->registeredDialogs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showDialog(Landroid/content/Context;JJ)V
    .locals 3

    .line 32
    invoke-static {p4, p5}, Lcom/infinite/app/DialogSystem;->getDialogType(J)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/infinite/app/DialogSystem;->registeredDialogs:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object p2, p0, Lcom/infinite/app/DialogSystem;->registeredDialogs:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/infinite/app/DialogSystem$Dialog;

    invoke-interface {p2, p1, p4, p5}, Lcom/infinite/app/DialogSystem$Dialog;->show(Landroid/content/Context;J)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/infinite/app/DialogSystem;->showTextInputDialog(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/infinite/app/DialogSystem;->showAlertDialog(Landroid/content/Context;JJ)V

    :goto_0
    return-void
.end method
