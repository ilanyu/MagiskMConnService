.class public abstract Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "MiCloudSyncAdapterBase"

.field private static final s:Ljava/lang/String; = "token_invalid_retry"


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Landroid/content/ContentResolver;

.field protected final d:Ljava/lang/String;

.field protected e:Landroid/accounts/Account;

.field protected f:Ljava/lang/String;

.field protected g:Landroid/content/SyncResult;

.field protected h:Ljava/lang/String;

.field protected i:Lcom/xiaomi/micloudsdk/b/a;

.field protected j:[Ljava/lang/String;

.field protected k:[Ljava/lang/String;

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field private t:Lcom/xiaomi/micloudsdk/sync/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    const/4 p2, 0x2

    .line 56
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->j:[Ljava/lang/String;

    .line 57
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->k:[Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->c:Landroid/content/ContentResolver;

    .line 72
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_93

    if-eqz v0, :cond_16

    const-wide/16 v1, 0x3e8

    .line 238
    :try_start_8
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_16

    :catch_c
    move-exception p1

    goto :goto_69

    :catch_e
    move-exception v1

    goto :goto_78

    :catch_10
    move-exception v1

    goto/16 :goto_80

    :catch_13
    move-exception v1

    goto/16 :goto_88

    :cond_16
    :goto_16
    const-string v1, "MiCloudSyncAdapterBase"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformSync: getting auth token. authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 244
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->d:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    if-nez v1, :cond_44

    const-string v1, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync: getExtTokenStr null future."

    .line 246
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 249
    :cond_44
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_54

    const-string v1, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync: getExtTokenStr null future result."

    .line 251
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :cond_54
    const-string v2, "authtoken"

    .line 254
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string v1, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync: getExtTokenStr future result textEmpty."

    .line 256
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/accounts/OperationCanceledException; {:try_start_8 .. :try_end_67} :catch_13
    .catch Landroid/accounts/AuthenticatorException; {:try_start_8 .. :try_end_67} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_67} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_67} :catch_c

    goto :goto_8f

    :cond_68
    return-object v1

    :goto_69
    const-string p2, "MiCloudSyncAdapterBase"

    const-string p3, "onPerformSync getExtTokenStr InterruptedException: "

    .line 267
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_93

    :goto_78
    const-string v2, "MiCloudSyncAdapterBase"

    const-string v3, "onPerformSync getExtTokenStr IOException: "

    .line 265
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :goto_80
    const-string v2, "MiCloudSyncAdapterBase"

    const-string v3, "onPerformSync getExtTokenStr AuthenticatorException: "

    .line 263
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :goto_88
    const-string v2, "MiCloudSyncAdapterBase"

    const-string v3, "onPerformSync getExtTokenStr OperationCanceledException: "

    .line 261
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_93
    :goto_93
    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(ILandroid/content/SyncResult;)V
    .registers 2

    packed-switch p0, :pswitch_data_26

    packed-switch p0, :pswitch_data_32

    .line 336
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->f(Landroid/content/SyncResult;)V

    goto :goto_25

    .line 333
    :pswitch_a
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->p(Landroid/content/SyncResult;)V

    goto :goto_25

    .line 330
    :pswitch_e
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->k(Landroid/content/SyncResult;)V

    goto :goto_25

    .line 327
    :pswitch_12
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->h(Landroid/content/SyncResult;)V

    goto :goto_25

    .line 324
    :pswitch_16
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->o(Landroid/content/SyncResult;)V

    goto :goto_25

    .line 321
    :pswitch_1a
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->n(Landroid/content/SyncResult;)V

    goto :goto_25

    .line 318
    :pswitch_1e
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->m(Landroid/content/SyncResult;)V

    goto :goto_25

    .line 315
    :pswitch_22
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->l(Landroid/content/SyncResult;)V

    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x7d0
        :pswitch_12
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p4, "token_invalid_retry"

    const/4 v1, 0x0

    .line 344
    invoke-virtual {v0, p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_16

    const-string p0, "MiCloudSyncAdapterBase"

    const-string p1, "Already retry with invalid token but still failed"

    .line 346
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_16
    const-string p4, "token_invalid_retry"

    const/4 v1, 0x1

    .line 349
    invoke-virtual {v0, p4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "MiCloudSyncAdapterBase"

    const-string v1, "AuthToken expired. Invalid and retry now"

    .line 350
    invoke-static {p4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    iget-object p4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p4, p3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2f
    return-void
.end method

.method protected static a(Landroid/content/SyncResult;)V
    .registers 1

    .line 395
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->e(Landroid/content/SyncResult;)V

    return-void
.end method

.method private static a(Landroid/content/SyncResult;Ljava/lang/String;)V
    .registers 2

    .line 510
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->r(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 514
    :cond_7
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/xiaomi/micloudsdk/c/d;Landroid/content/SyncResult;)V
    .registers 4

    .line 279
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v1, -0x2711

    if-eq v0, v1, :cond_32

    const/16 v1, 0x193

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x196

    if-eq v0, v1, :cond_2e

    packed-switch v0, :pswitch_data_38

    .line 294
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->k:I

    const v1, 0xcb23

    if-ne v0, v1, :cond_1c

    .line 295
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->h(Landroid/content/SyncResult;)V

    goto :goto_37

    .line 298
    :cond_1c
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->d()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 299
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->e(Landroid/content/SyncResult;)V

    goto :goto_37

    .line 302
    :cond_26
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->f(Landroid/content/SyncResult;)V

    goto :goto_37

    .line 286
    :pswitch_2a
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->g(Landroid/content/SyncResult;)V

    goto :goto_37

    .line 283
    :cond_2e
    :pswitch_2e
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->e(Landroid/content/SyncResult;)V

    goto :goto_37

    .line 290
    :cond_32
    iget p0, p0, Lcom/xiaomi/micloudsdk/c/d;->k:I

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(ILandroid/content/SyncResult;)V

    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x190
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method

.method private static a(Lcom/xiaomi/micloudsdk/c/h;Landroid/content/SyncResult;)V
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/h;->a()I

    move-result p0

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(ILandroid/content/SyncResult;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/micloudsdk/sync/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/g;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->t:Lcom/xiaomi/micloudsdk/sync/g;

    .line 493
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->t:Lcom/xiaomi/micloudsdk/sync/g;

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/sync/g;->a()V

    return-void
.end method

.method protected static b(Landroid/content/SyncResult;)V
    .registers 1

    .line 435
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->k(Landroid/content/SyncResult;)V

    return-void
.end method

.method protected static c(Landroid/content/SyncResult;)V
    .registers 1

    .line 450
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->l(Landroid/content/SyncResult;)V

    return-void
.end method

.method protected static d(Landroid/content/SyncResult;)V
    .registers 1

    .line 476
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->o(Landroid/content/SyncResult;)V

    return-void
.end method

.method private static e(Landroid/content/SyncResult;)V
    .registers 6

    .line 399
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-string v0, "request_error"

    .line 400
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static f(Landroid/content/SyncResult;)V
    .registers 5

    .line 405
    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    return-void
.end method

.method private static g(Landroid/content/SyncResult;)V
    .registers 5

    .line 409
    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    return-void
.end method

.method private static h(Landroid/content/SyncResult;)V
    .registers 6

    .line 413
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "gdpr_error"

    .line 414
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static i(Landroid/content/SyncResult;)V
    .registers 6

    .line 419
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "switch_off"

    .line 420
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .registers 2

    .line 497
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->t:Lcom/xiaomi/micloudsdk/sync/g;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/sync/g;->b()V

    const/4 v0, 0x0

    .line 498
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->t:Lcom/xiaomi/micloudsdk/sync/g;

    return-void
.end method

.method private static j(Landroid/content/SyncResult;)V
    .registers 6

    .line 425
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "pause_limit"

    .line 426
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static k(Landroid/content/SyncResult;)V
    .registers 6

    .line 439
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "cloud_storage_full"

    .line 440
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static l(Landroid/content/SyncResult;)V
    .registers 6

    .line 454
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "permission_error"

    .line 455
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static m(Landroid/content/SyncResult;)V
    .registers 6

    .line 460
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "sim_activated_error"

    .line 461
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static n(Landroid/content/SyncResult;)V
    .registers 6

    .line 466
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "permission_limit"

    .line 467
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static o(Landroid/content/SyncResult;)V
    .registers 6

    .line 480
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "secure_space_limit"

    .line 481
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static p(Landroid/content/SyncResult;)V
    .registers 6

    .line 486
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "wlan_only"

    .line 487
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static q(Landroid/content/SyncResult;)Ljava/lang/String;
    .registers 1

    .line 518
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->r(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 522
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static r(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;
    .registers 3

    .line 526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "miSyncResult"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/p;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 532
    :cond_e
    :try_start_e
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 533
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "resultMessage"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/p;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 538
    new-instance v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    return-object v1

    .line 536
    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "resultMessageField is null: Please file a bug to CloudService!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_2c} :catch_2c

    .line 540
    :catch_2c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "get miSyncResultField: Please file a bug to CloudService!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;,
            Lcom/xiaomi/micloudsdk/c/h;
        }
    .end annotation
.end method

.method protected a(Lcom/xiaomi/micloudsdk/b/a;)V
    .registers 2

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 506
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->t:Lcom/xiaomi/micloudsdk/sync/g;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 503
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag or msg is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e()Z
    .registers 2

    .line 370
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->p:Z

    return v0
.end method

.method protected f()Z
    .registers 2

    .line 374
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->o:Z

    return v0
.end method

.method protected g()Z
    .registers 2

    .line 378
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->o:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->l:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method protected h()Z
    .registers 2

    .line 382
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->o:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->m:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method protected i()Z
    .registers 2

    .line 386
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->o:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->n:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p5

    const-string v0, "MiCloudSyncAdapterBase"

    const-string v4, "check_sync_error_refactor"

    .line 78
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->e:Landroid/accounts/Account;

    .line 80
    iput-object v15, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->f:Ljava/lang/String;

    .line 81
    iput-object v13, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->g:Landroid/content/SyncResult;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncLog["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v0, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: ---sync start---"

    .line 86
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MiCloudSyncAdapterBase"

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->g:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->o:Z

    const-string v0, "micloud_ignore_temperature"

    .line 90
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->l:Z

    const-string v0, "micloud_ignore_wifi_settings"

    .line 91
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->m:Z

    const-string v0, "micloud_ignore_battery_low"

    .line 92
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->n:Z

    const-string v0, "force"

    .line 93
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->p:Z

    const-string v0, "ignore_backoff"

    .line 94
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->q:Z

    const-string v0, "ignore_settings"

    .line 95
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->r:Z

    .line 97
    iget-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->o:Z

    if-nez v0, :cond_a7

    iget-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->p:Z

    if-nez v0, :cond_a7

    iget-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->r:Z

    if-eqz v0, :cond_a5

    goto :goto_a7

    :cond_a5
    const/4 v14, 0x0

    goto :goto_a8

    :cond_a7
    :goto_a7
    const/4 v14, 0x1

    .line 98
    :goto_a8
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    invoke-static {v0, v14}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;Z)V

    .line 100
    invoke-direct {v1, v15}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;

    invoke-direct {v0, v15, v11, v12, v3}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 103
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    invoke-static {v0, v15}, Lcom/xiaomi/micloudsdk/sync/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/f;

    move-result-object v16

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before Sync: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/sync/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no_error"

    .line 113
    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    invoke-static {v6, v13}, La/a/a/d/g;->a(Landroid/content/Context;Landroid/content/SyncResult;)Z

    move-result v6

    if-nez v6, :cond_109

    const-string v0, "MiCloudSyncAdapterBase"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gdpr Permission deny: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->h(Landroid/content/SyncResult;)V

    const/16 v4, 0x7d0

    const-string v0, "gdpr_deny"

    const-wide/16 v7, 0x0

    const/16 v9, 0x7d0

    :goto_105
    const/16 v18, 0x1

    goto/16 :goto_244

    .line 122
    :cond_109
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    if-eqz v6, :cond_22f

    .line 123
    invoke-static {v2, v15}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_117

    goto/16 :goto_22f

    .line 132
    :cond_117
    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    iget-object v9, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->e:Landroid/accounts/Account;

    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->f:Ljava/lang/String;

    invoke-static {v6, v9, v4}, Lcom/xiaomi/micloudsdk/sync/c;->e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_135

    const-string v0, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync: sync is set to pause. do not sync!!"

    .line 133
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->j(Landroid/content/SyncResult;)V

    .line 135
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/a;->b()I

    move-result v4

    const-string v0, "pause_limit"

    goto/16 :goto_23f

    .line 141
    :cond_135
    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->e:Landroid/accounts/Account;

    iget-object v9, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->f:Ljava/lang/String;

    invoke-direct {v1, v4, v6, v9}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->h:Ljava/lang/String;

    .line 142
    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15b

    const-string v0, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync: Tried 3 times, but get null token."

    .line 143
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->g(Landroid/content/SyncResult;)V

    .line 145
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/a;->a()I

    move-result v4

    const-string v0, "auth_token_error"

    goto/16 :goto_23f

    .line 151
    :cond_15b
    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->h:Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/b/a;->a(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/b/a;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->i:Lcom/xiaomi/micloudsdk/b/a;

    .line 153
    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->i:Lcom/xiaomi/micloudsdk/b/a;

    invoke-virtual {v1, v4}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Lcom/xiaomi/micloudsdk/b/a;)V

    .line 154
    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->i:Lcom/xiaomi/micloudsdk/b/a;

    if-nez v4, :cond_185

    const-string v0, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: Cannot parse ext token"

    .line 155
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->g(Landroid/content/SyncResult;)V

    .line 157
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/a;->a()I

    move-result v4

    const-string v0, "auth_token_error"

    .line 159
    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    iget-object v9, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->h:Ljava/lang/String;

    invoke-static {v6, v2, v15, v9, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_23f

    .line 165
    :cond_185
    :try_start_185
    invoke-virtual {v1, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/os/Bundle;)V
    :try_end_188
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_185 .. :try_end_188} :catch_1e4
    .catch Lcom/xiaomi/micloudsdk/c/h; {:try_start_185 .. :try_end_188} :catch_1c0

    .line 187
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 188
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/utils/a;->a(Landroid/content/SyncResult;)I

    move-result v4

    .line 189
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/stat/b;->a(Landroid/content/SyncResult;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiCloudSyncAdapterBase"

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPerformSync: Error without throw CloudException: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/utils/b;->a(Landroid/content/SyncResult;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23f

    :cond_1b2
    const-string v2, "MiCloudSyncAdapterBase"

    const-string v3, "onPerformSync: No error found. ---Success---"

    .line 196
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    goto/16 :goto_244

    :catch_1c0
    move-exception v0

    move-object v2, v0

    .line 180
    invoke-static {v2, v13}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Lcom/xiaomi/micloudsdk/c/h;Landroid/content/SyncResult;)V

    .line 181
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/sync/utils/a;->a(Lcom/xiaomi/micloudsdk/c/h;)I

    move-result v4

    .line 182
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/stat/b;->a(Lcom/xiaomi/micloudsdk/c/h;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiCloudSyncAdapterBase"

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPerformSync local exception, reason: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23f

    :catch_1e4
    move-exception v0

    move-object v4, v0

    .line 167
    invoke-static {v4, v13}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Lcom/xiaomi/micloudsdk/c/d;Landroid/content/SyncResult;)V

    .line 168
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/sync/utils/a;->a(Lcom/xiaomi/micloudsdk/c/d;)I

    move-result v0

    .line 169
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/stat/b;->a(Lcom/xiaomi/micloudsdk/c/d;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "MiCloudSyncAdapterBase"

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPerformSync server exception, reason: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget v5, v4, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v7, 0x191

    if-ne v5, v7, :cond_214

    .line 172
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->h:Ljava/lang/String;

    invoke-static {v5, v2, v15, v7, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    :cond_214
    invoke-virtual {v4}, Lcom/xiaomi/micloudsdk/c/d;->d()Z

    move-result v2

    if-eqz v2, :cond_229

    .line 176
    invoke-virtual {v4}, Lcom/xiaomi/micloudsdk/c/d;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x708

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v7, v2

    goto :goto_22b

    :cond_229
    const-wide/16 v7, 0x0

    :goto_22b
    move v9, v0

    move-object v0, v6

    goto/16 :goto_105

    :cond_22f
    :goto_22f
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync: sync switch off. do not sync!!"

    .line 124
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->i(Landroid/content/SyncResult;)V

    .line 126
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/a;->c()I

    move-result v4

    const-string v0, "switch_off"

    :goto_23f
    move v9, v4

    const-wide/16 v7, 0x0

    goto/16 :goto_105

    .line 200
    :goto_244
    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/xiaomi/micloudsdk/sync/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/f;

    move-result-object v17

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/micloudsdk/sync/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 204
    new-instance v21, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;

    xor-int/lit8 v4, v18, 0x1

    .line 206
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->q(Landroid/content/SyncResult;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v2, v21

    move-object/from16 v3, p3

    move-wide v5, v11

    move-wide/from16 v23, v7

    move-wide/from16 v7, v19

    move v15, v9

    move-object/from16 v9, v22

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;-><init>(Ljava/lang/String;ZJJLjava/lang/String;)V

    .line 207
    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    xor-int/lit8 v4, v18, 0x1

    .line 210
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/sync/f;->b()I

    move-result v3

    int-to-long v7, v3

    .line 211
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/micloudsdk/sync/f;->b()I

    move-result v3

    int-to-long v9, v3

    move v3, v14

    move-object v5, v0

    move-object/from16 v6, p3

    move/from16 v25, v15

    move-object v15, v13

    move-wide/from16 v13, v19

    .line 209
    invoke-static/range {v2 .. v14}, Lcom/xiaomi/micloudsdk/sync/i;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJJJ)V

    if-eqz v18, :cond_2aa

    .line 215
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    move/from16 v4, v25

    move-object/from16 v2, p3

    invoke-static {v0, v2, v4}, Lcom/xiaomi/micloudsdk/sync/utils/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2b1

    :cond_2aa
    move-object/from16 v2, p3

    .line 217
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/xiaomi/micloudsdk/sync/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    :goto_2b1
    iget-wide v2, v15, Landroid/content/SyncResult;->delayUntil:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v15, Landroid/content/SyncResult;->delayUntil:J

    .line 220
    iget-wide v2, v15, Landroid/content/SyncResult;->delayUntil:J

    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->b:Landroid/content/Context;

    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->f:Ljava/lang/String;

    .line 221
    invoke-static {v0, v4}, Lcom/xiaomi/micloudsdk/sync/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 220
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v15, Landroid/content/SyncResult;->delayUntil:J

    if-eqz v18, :cond_2d7

    .line 223
    iget-wide v2, v15, Landroid/content/SyncResult;->delayUntil:J

    move-wide/from16 v7, v23

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v15, Landroid/content/SyncResult;->delayUntil:J

    .line 226
    :cond_2d7
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->j()V

    return-void
.end method
