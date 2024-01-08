.class public Lcom/brakefield/painter/experiments/FirebaseValueProvider;
.super Lcom/brakefield/painter/experiments/ValueProvider;
.source "FirebaseValueProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/painter/experiments/ValueProvider<",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/brakefield/painter/experiments/FirebaseValueProvider;


# instance fields
.field private final remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/brakefield/painter/experiments/ValueProvider;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-void
.end method

.method public static getInstance()Lcom/brakefield/painter/experiments/FirebaseValueProvider;
    .locals 1

    .line 17
    sget-object v0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->instance:Lcom/brakefield/painter/experiments/FirebaseValueProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;

    invoke-direct {v0}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;-><init>()V

    sput-object v0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->instance:Lcom/brakefield/painter/experiments/FirebaseValueProvider;

    .line 18
    :cond_0
    sget-object v0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->instance:Lcom/brakefield/painter/experiments/FirebaseValueProvider;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Boolean;
    .locals 0

    .line 65
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 12
    check-cast p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->getBoolean(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Double;
    .locals 2

    .line 57
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 0

    .line 12
    check-cast p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->getDouble(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Float;
    .locals 2

    .line 53
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asDouble()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    .line 12
    check-cast p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->getFloat(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getInt(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Integer;
    .locals 2

    .line 45
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asLong()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 12
    check-cast p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->getInt(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Long;
    .locals 2

    .line 49
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 12
    check-cast p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->getLong(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 12
    check-cast p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->getString(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setup$0$com-brakefield-painter-experiments-FirebaseValueProvider(Lcom/brakefield/painter/experiments/Values;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->updateValues(Lcom/brakefield/painter/experiments/Values;)V

    :cond_0
    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/experiments/Values;)V
    .locals 3

    .line 29
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    const-wide/16 v1, 0xe10

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {p2}, Lcom/brakefield/painter/experiments/Values;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/experiments/FirebaseValueProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/experiments/FirebaseValueProvider$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/experiments/FirebaseValueProvider;Lcom/brakefield/painter/experiments/Values;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
