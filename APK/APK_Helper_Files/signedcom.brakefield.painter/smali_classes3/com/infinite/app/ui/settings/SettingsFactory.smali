.class public Lcom/infinite/app/ui/settings/SettingsFactory;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(J)Lcom/infinite/app/ui/settings/Setting;
    .locals 1

    .line 6
    invoke-static {p0, p1}, Lcom/infinite/app/ui/settings/Setting;->getType(J)I

    move-result v0

    .line 7
    invoke-static {v0, p0, p1}, Lcom/infinite/app/ui/settings/SettingsFactory;->getSettingFromType(IJ)Lcom/infinite/app/ui/settings/Setting;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingFromType(IJ)Lcom/infinite/app/ui/settings/Setting;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 16
    new-instance p0, Lcom/infinite/app/ui/settings/ListSetting;

    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/settings/ListSetting;-><init>(J)V

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lcom/infinite/app/ui/settings/RangeSetting;

    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/settings/RangeSetting;-><init>(J)V

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Lcom/infinite/app/ui/settings/BoolSetting;

    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/settings/BoolSetting;-><init>(J)V

    return-object p0
.end method
