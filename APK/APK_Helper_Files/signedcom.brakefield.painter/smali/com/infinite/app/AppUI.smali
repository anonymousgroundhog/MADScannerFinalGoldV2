.class public Lcom/infinite/app/AppUI;
.super Lcom/infinite/core/NativeObject;
.source "AppUI.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native findComponent(JLjava/lang/String;)J
.end method

.method private native getComponent(JI)J
.end method


# virtual methods
.method public findComponent(Ljava/lang/String;)Lcom/infinite/app/ui/UIComponent;
    .locals 4

    .line 19
    iget-wide v0, p0, Lcom/infinite/app/AppUI;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/infinite/app/AppUI;->findComponent(JLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 20
    new-instance p1, Lcom/infinite/app/ui/UIComponent;

    invoke-direct {p1, v0, v1}, Lcom/infinite/app/ui/UIComponent;-><init>(J)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComponent(I)Lcom/infinite/app/ui/UIComponent;
    .locals 4

    .line 13
    iget-wide v0, p0, Lcom/infinite/app/AppUI;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/infinite/app/AppUI;->getComponent(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Lcom/infinite/app/ui/UIComponent;

    invoke-direct {p1, v0, v1}, Lcom/infinite/app/ui/UIComponent;-><init>(J)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
