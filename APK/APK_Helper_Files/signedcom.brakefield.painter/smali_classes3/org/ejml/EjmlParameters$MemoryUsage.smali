.class public final enum Lorg/ejml/EjmlParameters$MemoryUsage;
.super Ljava/lang/Enum;
.source "EjmlParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/EjmlParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ejml/EjmlParameters$MemoryUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ejml/EjmlParameters$MemoryUsage;

.field public static final enum FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

.field public static final enum LOW_MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 84
    new-instance v0, Lorg/ejml/EjmlParameters$MemoryUsage;

    const-string v1, "LOW_MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ejml/EjmlParameters$MemoryUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->LOW_MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    .line 88
    new-instance v1, Lorg/ejml/EjmlParameters$MemoryUsage;

    const-string v2, "FASTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/ejml/EjmlParameters$MemoryUsage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    .line 79
    filled-new-array {v0, v1}, [Lorg/ejml/EjmlParameters$MemoryUsage;

    move-result-object v0

    sput-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->$VALUES:[Lorg/ejml/EjmlParameters$MemoryUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ejml/EjmlParameters$MemoryUsage;
    .locals 1

    .line 79
    const-class v0, Lorg/ejml/EjmlParameters$MemoryUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ejml/EjmlParameters$MemoryUsage;

    return-object p0
.end method

.method public static values()[Lorg/ejml/EjmlParameters$MemoryUsage;
    .locals 1

    .line 79
    sget-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->$VALUES:[Lorg/ejml/EjmlParameters$MemoryUsage;

    invoke-virtual {v0}, [Lorg/ejml/EjmlParameters$MemoryUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ejml/EjmlParameters$MemoryUsage;

    return-object v0
.end method
