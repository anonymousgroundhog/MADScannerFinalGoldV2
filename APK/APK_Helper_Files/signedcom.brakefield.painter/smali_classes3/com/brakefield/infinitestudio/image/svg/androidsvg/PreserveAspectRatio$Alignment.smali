.class public final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;
.super Ljava/lang/Enum;
.source "PreserveAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMaxYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMaxYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMaxYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMidYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMidYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMidYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMinYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMinYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMinYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;
    .locals 10

    .line 125
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v9, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    filled-new-array/range {v0 .. v9}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 128
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 130
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMinYMin"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 132
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMidYMin"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 134
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMaxYMin"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 136
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMinYMid"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 138
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMidYMid"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 140
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMaxYMid"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 142
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMinYMax"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 144
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMidYMax"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 146
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    const-string v1, "XMaxYMax"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 125
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;
    .locals 1

    .line 125
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;
    .locals 1

    .line 125
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    return-object v0
.end method
