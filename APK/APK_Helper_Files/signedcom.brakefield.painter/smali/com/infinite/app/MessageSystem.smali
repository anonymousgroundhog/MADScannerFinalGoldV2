.class public Lcom/infinite/app/MessageSystem;
.super Ljava/lang/Object;
.source "MessageSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native deleteMessage(J)V
.end method

.method private native getMessageParams(J)[Ljava/lang/String;
.end method

.method private native getMessageString(JJ)Ljava/lang/String;
.end method


# virtual methods
.method public getStringFromMessage(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/infinite/app/MessageSystem;->getMessageString(JJ)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-direct {p0, p4, p5}, Lcom/infinite/app/MessageSystem;->getMessageParams(J)[Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-direct {p0, p4, p5}, Lcom/infinite/app/MessageSystem;->deleteMessage(J)V

    .line 22
    invoke-static {p1, p2, p3}, Lcom/infinite/app/CoreAppStrings;->processString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public id()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
