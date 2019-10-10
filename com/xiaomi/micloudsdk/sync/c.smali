.class public Lcom/xiaomi/micloudsdk/sync/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "_all"

.field private static final b:Ljava/lang/String; = "MiCloudResolver"

.field private static final c:Ljava/lang/String; = "alarm"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)J
    .registers 5

    .line 104
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 105
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    const-string v0, "MiCloudResolver"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResumeTime: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->isPauseExceptAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 109
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    if-eqz v0, :cond_27

    return-wide v1

    :cond_27
    const-string p1, "_all"

    .line 113
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    cmp-long v0, p0, v1

    if-gez v0, :cond_32

    move-wide p0, v1

    :cond_32
    return-wide p0
.end method

.method public static a()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 251
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    const-string v5, "com.xiaomi"

    .line 252
    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 253
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method private static a(J)V
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_7

    return-void

    .line 243
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal time"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/accounts/Account;)V
    .registers 2

    if-eqz p0, :cond_d

    const-string v0, "com.xiaomi"

    .line 226
    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    .line 227
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal account"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 221
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 5

    .line 119
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 120
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    const-string v0, "MiCloudResolver"

    const-string v1, "requestAllSyncs"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/c;->a()Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    invoke-static {p0, p1, v1}, Lcom/xiaomi/micloudsdk/sync/c;->e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 126
    invoke-static {p0, p1, v1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_15

    :cond_2b
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;J)V
    .registers 7

    .line 143
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 144
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 145
    invoke-static {p2, p3}, Lcom/xiaomi/micloudsdk/sync/c;->a(J)V

    const-string v0, "MiCloudResolver"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseAllSyncs: time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 150
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->deletePauseExceptAuthority(Landroid/content/Context;)V

    const-string p1, "_all"

    .line 151
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 153
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6

    .line 28
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 29
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 30
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    const-string v0, "MiCloudResolver"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_40

    const-string p0, "MiCloudResolver"

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSync: authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is paused. request sync fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_40
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2, p0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;J)V
    .registers 8

    .line 76
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 77
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 78
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    .line 79
    invoke-static {p3, p4}, Lcom/xiaomi/micloudsdk/sync/c;->a(J)V

    const-string v0, "MiCloudResolver"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->c(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 84
    invoke-static {p0, p2, p3, p4}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 86
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4

    .line 232
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 235
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/c;->a()Ljava/util/List;

    move-result-object v0

    .line 236
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 237
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal authority: not registered authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal authority: empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 5

    .line 196
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 197
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    const-string v0, "MiCloudResolver"

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSyncActive: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.SYNC_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.cloudservice"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_operation"

    const-string v2, "alarm"

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 264
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_26

    .line 266
    :cond_23
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_26
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    .line 132
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 133
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    const-string v0, "MiCloudResolver"

    const-string v1, "cancelAllSyncs"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/c;->a()Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    invoke-static {p0, p1, v1}, Lcom/xiaomi/micloudsdk/sync/c;->c(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_15

    :cond_25
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6

    .line 41
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 42
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 43
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    const-string v0, "MiCloudResolver"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestForceSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "MiCloudResolver"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is paused. request sync fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force"

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "micloud_ignore_temperature"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "micloud_ignore_battery_low"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/m;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_60

    const-string p0, "micloud_ignore_wifi_settings"

    .line 57
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    :cond_60
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "value_command_cancel_sync"

    .line 271
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 5

    .line 204
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 205
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    const-string v0, "MiCloudResolver"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSyncPending: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 6

    .line 157
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 158
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    const-string v0, "MiCloudResolver"

    const-string v1, "resumeAllSyncs"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "_all"

    const-wide/16 v1, 0x0

    .line 161
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 162
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/c;->a()Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    invoke-static {p0, v3, v1, v2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1c

    .line 167
    :cond_2c
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 169
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6

    .line 64
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 65
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 66
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    const-string v0, "MiCloudResolver"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/accounts/Account;)J
    .registers 7

    .line 173
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 174
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    const-string p1, "MiCloudResolver"

    const-string v0, "getLastestResumeTime"

    .line 175
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/c;->a()Ljava/util/List;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    invoke-static {p0, v2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1a

    move-wide v0, v2

    goto :goto_1a

    :cond_30
    const-string p1, "_all"

    .line 183
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_3b

    goto :goto_3c

    :cond_3b
    move-wide p0, v0

    :goto_3c
    return-wide p0
.end method

.method public static d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6

    .line 90
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 91
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 92
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    const-string v0, "MiCloudResolver"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->insertPauseExceptAuthority(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 96
    invoke-static {p0, p2, v0, v1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 98
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/accounts/Account;)J
    .registers 3

    .line 189
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 190
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    const-string p1, "MiCloudResolver"

    const-string v0, "getResumeTimeForAll"

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "_all"

    .line 192
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 5

    .line 212
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;)V

    .line 213
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;)V

    .line 214
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Ljava/lang/String;)V

    const-string p1, "MiCloudResolver"

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSyncPausing: authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method
