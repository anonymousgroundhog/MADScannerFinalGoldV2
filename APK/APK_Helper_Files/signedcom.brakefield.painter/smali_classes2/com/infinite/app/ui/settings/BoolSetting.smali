.class public Lcom/infinite/app/ui/settings/BoolSetting;
.super Lcom/infinite/app/ui/settings/Setting;
.source "BoolSetting.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/settings/Setting;-><init>(J)V

    return-void
.end method

.method private native getValue(J)Z
.end method

.method private native setValue(JZ)V
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Z
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/infinite/app/ui/settings/BoolSetting;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/app/ui/settings/BoolSetting;->getValue(J)Z

    move-result v0

    return v0
.end method

.method public setValue(Z)V
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/infinite/app/ui/settings/BoolSetting;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/infinite/app/ui/settings/BoolSetting;->setValue(JZ)V

    return-void
.end method
