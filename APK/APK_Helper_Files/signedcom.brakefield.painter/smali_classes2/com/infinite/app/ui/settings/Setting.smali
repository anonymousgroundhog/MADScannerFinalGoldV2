.class public Lcom/infinite/app/ui/settings/Setting;
.super Lcom/infinite/core/NativeObject;
.source "Setting.java"


# static fields
.field public static final BOOL:I = 0x0

.field public static final LIST:I = 0x2

.field public static final RANGE:I = 0x1


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getDescription(J)Ljava/lang/String;
.end method

.method private native getName(J)Ljava/lang/String;
.end method

.method public static native getType(J)I
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/infinite/app/ui/settings/Setting;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/app/ui/settings/Setting;->getDescription(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/infinite/app/ui/settings/Setting;->nativePointer:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/infinite/app/ui/settings/Setting;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/app/ui/settings/Setting;->getName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
