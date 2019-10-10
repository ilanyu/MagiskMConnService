.class Lcom/xiaomi/micloudsdk/sync/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SyncStatUtil"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;JJZ)V
    .registers 10

    const-string v0, "SyncStatUtil"

    const-string v1, "performSyncTimeStat: "

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v0, p3, p1

    .line 66
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "stat_key_sync_time_consume"

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "stat_key_sync_time_start_in_millis"

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "stat_key_sync_time_end_in_millis"

    .line 69
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "stat_key_sync_successful"

    .line 70
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 71
    sget-object p1, Lcom/xiaomi/micloudsdk/sync/d;->g:Landroid/net/Uri;

    invoke-static {p0, p1, v2}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 3

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "SyncStatUtil"

    const-string p1, "CloudService version is too low."

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1b
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 86
    :goto_15
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_23

    :catchall_19
    move-exception p1

    goto :goto_24

    :catch_1b
    :try_start_1b
    const-string p1, "SyncStatUtil"

    const-string p2, "CloudService stat provider is unavailable."

    .line 84
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_19

    goto :goto_15

    :goto_23
    return-void

    .line 86
    :goto_24
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    throw p1
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, 0x1

    .line 17
    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static a(Landroid/content/Context;ZZ)V
    .registers 5

    const-string v0, "SyncStatUtil"

    const-string v1, "performSyncPhoneState: "

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "micloud_force"

    .line 33
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "stat_key_sync_start"

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    sget-object p1, Lcom/xiaomi/micloudsdk/sync/d;->f:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 13

    const-string v0, "SyncStatUtil"

    const-string v1, "performSyncResultStat: "

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "micloud_ignore_temperature"

    const/4 v2, 0x0

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "micloud_ignore_wifi_settings"

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "micloud_ignore_battery_low"

    .line 46
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "stat_key_sync_retry"

    const/4 v2, 0x1

    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "micloud_force"

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "stat_key_sync_reason"

    .line 49
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "stat_key_sync_successful"

    .line 50
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "stat_key_sync_authority"

    .line 51
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    cmp-long p3, p5, p1

    if-eqz p3, :cond_6a

    cmp-long p1, p7, p1

    if-eqz p1, :cond_6a

    const-string p1, "stat_key_unsynced_count_before_sync"

    .line 54
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "stat_key_unsynced_count_after_sync"

    .line 55
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    :cond_6a
    sget-object p1, Lcom/xiaomi/micloudsdk/sync/d;->e:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJJJ)V
    .registers 19

    move-object v0, p0

    move-wide v1, p9

    move-wide/from16 v3, p11

    move v5, p2

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;JJZ)V

    .line 24
    invoke-static/range {p0 .. p8}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJ)V

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    .line 26
    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;ZZ)V

    return-void
.end method
