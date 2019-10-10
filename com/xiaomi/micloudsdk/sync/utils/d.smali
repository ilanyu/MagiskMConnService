.class public Lcom/xiaomi/micloudsdk/sync/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SyncUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/os/Bundle;)Z
    .registers 3

    .line 11
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final b(Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "micloud_ignore_temperature"

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 17
    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static final c(Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "micloud_ignore_wifi_settings"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 23
    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static final d(Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "micloud_ignore_battery_low"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method
