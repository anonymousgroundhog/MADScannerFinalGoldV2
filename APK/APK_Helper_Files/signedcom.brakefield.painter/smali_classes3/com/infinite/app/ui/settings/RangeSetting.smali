.class public Lcom/infinite/app/ui/settings/RangeSetting;
.super Lcom/infinite/app/ui/settings/Setting;
.source "RangeSetting.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/settings/Setting;-><init>(J)V

    return-void
.end method

.method private native getValue(J)F
.end method

.method private native setValue(JF)V
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/infinite/app/ui/settings/RangeSetting;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/app/ui/settings/RangeSetting;->getValue(J)F

    move-result v0

    return v0
.end method

.method public setValue(F)V
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/infinite/app/ui/settings/RangeSetting;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/infinite/app/ui/settings/RangeSetting;->setValue(JF)V

    return-void
.end method
