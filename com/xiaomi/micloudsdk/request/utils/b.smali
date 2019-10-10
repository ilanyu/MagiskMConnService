.class public Lcom/xiaomi/micloudsdk/request/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "NetworkAvailabilityManager"

.field private static final b:I = 0x0

.field private static final c:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .registers 6

    const-class v0, Lcom/xiaomi/micloudsdk/request/utils/b;

    monitor-enter v0

    if-nez p0, :cond_10

    :try_start_5
    const-string p0, "NetworkAvailabilityManager"

    const-string p1, "context is null, ignore"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    .line 20
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_42

    .line 22
    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "micloud_network_availability"

    .line 25
    invoke-static {v2, v3, p1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 26
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/b;->b(Landroid/content/Context;Z)V

    const-string p0, "NetworkAvailabilityManager"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "micloud network state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_e

    .line 29
    :cond_40
    monitor-exit v0

    return-void

    .line 17
    :goto_42
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lcom/xiaomi/micloudsdk/request/utils/b;

    monitor-enter v0

    if-eqz p0, :cond_15

    .line 35
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "micloud_network_availability"

    const/4 v2, 0x0

    .line 36
    invoke-static {p0, v1, v2}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1d

    if-eqz p0, :cond_13

    const/4 v2, 0x1

    .line 37
    :cond_13
    monitor-exit v0

    return v2

    .line 33
    :cond_15
    :try_start_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p0

    .line 31
    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;Z)V
    .registers 5

    const-string v0, "NetworkAvailabilityManager"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNetworkAvailabilityChangedBroadcast active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MICLOUD_NETWORK_AVAILABILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "active"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
