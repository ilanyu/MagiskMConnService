.class public Lcom/xiaomi/mistatistic/sdk/controller/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Z = false

.field private static c:Lcom/xiaomi/mistatistic/sdk/controller/k;


# instance fields
.field private d:Z

.field private e:Lcom/xiaomi/mistatistic/sdk/a;

.field private f:Z

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->d:Z

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    .line 37
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->f:Z

    .line 38
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/f$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/g;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/g;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    return-object p1
.end method

.method public static a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 10

    .line 358
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>()V

    const/4 v1, 0x2

    .line 359
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x4

    .line 360
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 361
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 362
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 363
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    .line 364
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    .line 365
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 366
    iput-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 367
    iput-object v6, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    .line 368
    iput-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    .line 369
    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 370
    iput-object v4, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    .line 371
    iput-object v7, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    .line 372
    iput p0, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    return-object v0
.end method

.method public static a()V
    .registers 2

    .line 53
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/g;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->f:Z

    return p1
.end method

.method private g()V
    .registers 5

    .line 61
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->f:Z

    if-nez v0, :cond_3d

    .line 63
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v1, :cond_2c

    const-string v1, "unbind service before bind it again!"

    .line 66
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 69
    :cond_2c
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_37

    goto :goto_3d

    :catch_37
    move-exception v0

    const-string v1, "ensureServiceBinded"

    .line 71
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 10

    .line 77
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    if-eqz v0, :cond_44

    .line 78
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->g()V

    const/4 v0, 0x0

    .line 80
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 81
    :cond_c
    iget-boolean v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->f:Z

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v3, :cond_15

    goto :goto_30

    .line 84
    :cond_15
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/c;

    move-result-object p1

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process query, result is: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;)V

    return-object p1

    .line 82
    :cond_30
    :goto_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_3d

    const/4 v5, 0x0

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_c

    return-object v0

    :catch_3d
    move-exception p1

    const-string p2, "queryCustomEvent"

    .line 88
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 92
    :cond_44
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/c;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/c;",
            ">;"
        }
    .end annotation

    .line 199
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    if-eqz v0, :cond_55

    .line 200
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->g()V

    .line 202
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 203
    :cond_b
    iget-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->f:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v2, :cond_14

    goto :goto_37

    .line 207
    :cond_14
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(J)Ljava/util/List;

    move-result-object p1

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "process getAll, result size is :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_28

    const/4 v0, 0x0

    goto :goto_2c

    :cond_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;)V

    return-object p1

    .line 204
    :cond_37
    :goto_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_48} :catch_49

    return-object p1

    :catch_49
    move-exception p1

    const-string p2, "getAllEventOrderByTimestampDescend"

    .line 211
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 215
    :cond_55
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(JJ)V
    .registers 8

    .line 410
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    if-eqz v0, :cond_32

    .line 412
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x5

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "startTime"

    .line 414
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "endTime"

    .line 415
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 416
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_2b

    goto :goto_35

    :catch_2b
    move-exception p1

    const-string p2, "deleteEventsByStartAndEndTS"

    .line 418
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 421
    :cond_32
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(JJ)V

    :goto_35
    return-void
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/data/c;)V
    .registers 5

    .line 126
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    if-eqz v0, :cond_2d

    .line 128
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "StatEventPojo"

    .line 130
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    goto :goto_30

    :catch_26
    move-exception p1

    const-string v0, "insertNewEvent"

    .line 133
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 136
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    :goto_30
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 57
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->d:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 163
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    if-eqz v0, :cond_37

    .line 165
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x2

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key"

    .line 167
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "category"

    .line 168
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "newValue"

    .line 169
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_30

    goto :goto_3a

    :catch_30
    move-exception p1

    const-string p2, "updateEventByKeyAndCategory"

    .line 172
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 175
    :cond_37
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 14

    .line 101
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter v0

    const/4 v1, 0x0

    .line 103
    :try_start_4
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "mistat_event"

    const/4 v5, 0x0

    const-string v6, "category=? AND key=?"

    const/4 v2, 0x2

    .line 104
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    const/4 p1, 0x1

    aput-object p2, v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_1f} :catch_3c
    .catchall {:try_start_4 .. :try_end_1f} :catchall_3a

    if-eqz p1, :cond_2f

    .line 110
    :try_start_21
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 111
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/c;

    move-result-object p2
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_2b} :catch_2d
    .catchall {:try_start_21 .. :try_end_2b} :catchall_4f

    move-object v1, p2

    goto :goto_2f

    :catch_2d
    move-exception p2

    goto :goto_3e

    :cond_2f
    :goto_2f
    if-eqz p1, :cond_34

    .line 117
    :try_start_31
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_34
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_36
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_57

    goto :goto_4d

    :catchall_3a
    move-exception p2

    goto :goto_51

    :catch_3c
    move-exception p2

    move-object p1, v1

    :goto_3e
    :try_start_3e
    const-string v2, "EventDAO"

    const-string v3, "queryCustomEvent exception"

    .line 114
    invoke-static {v2, v3, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4f

    if-eqz p1, :cond_4a

    .line 117
    :try_start_47
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_4a
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_36

    .line 121
    :goto_4d
    monitor-exit v0

    return-object v1

    :catchall_4f
    move-exception p2

    move-object v1, p1

    :goto_51
    if-eqz v1, :cond_59

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_59

    :catchall_57
    move-exception p1

    goto :goto_5f

    .line 119
    :cond_59
    :goto_59
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 120
    throw p2

    .line 121
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_57

    throw p1
.end method

.method public b(J)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/c;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter v2

    .line 224
    :try_start_8
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    .line 226
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_ca

    return-object v1

    :cond_12
    const/4 v12, 0x0

    :try_start_13
    const-string v4, "mistat_event"

    const/4 v5, 0x0

    const-string v6, "ts<?"

    const/4 v13, 0x1

    .line 229
    new-array v7, v13, [Ljava/lang/String;

    .line 232
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v7, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ts DESC"

    const/16 v3, 0x1f4

    .line 236
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v0

    .line 229
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_31} :catch_ad
    .catchall {:try_start_13 .. :try_end_31} :catchall_a8

    if-eqz v11, :cond_84

    .line 237
    :try_start_33
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_84

    const-string v3, "ts"

    .line 238
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 239
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const-string v6, "ts<? AND ts>=? AND anonymous=?"

    const/4 v5, 0x3

    .line 241
    new-array v7, v5, [Ljava/lang/String;

    .line 242
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v14

    .line 243
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_57} :catch_7f
    .catchall {:try_start_33 .. :try_end_57} :catchall_7b

    const/4 v3, 0x2

    move-object/from16 v15, p0

    :try_start_5a
    iget-boolean v4, v15, Lcom/xiaomi/mistatistic/sdk/controller/g;->d:Z

    if-eqz v4, :cond_63

    .line 244
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_67

    :cond_63
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_67
    aput-object v4, v7, v3

    const-string v4, "mistat_event"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ts DESC"

    move-object v3, v0

    .line 246
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_75} :catch_79
    .catchall {:try_start_5a .. :try_end_75} :catchall_77

    move-object v12, v0

    goto :goto_87

    :catchall_77
    move-exception v0

    goto :goto_c1

    :catch_79
    move-exception v0

    goto :goto_82

    :catchall_7b
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_c1

    :catch_7f
    move-exception v0

    move-object/from16 v15, p0

    :goto_82
    move-object v12, v11

    goto :goto_b0

    :cond_84
    move-object/from16 v15, p0

    move-object v12, v11

    :goto_87
    if-eqz v12, :cond_9f

    .line 254
    :try_start_89
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 256
    :cond_8f
    invoke-static {v12}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/c;

    move-result-object v0

    .line 257
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_9a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_9a} :catch_9d
    .catchall {:try_start_89 .. :try_end_9a} :catchall_bf

    if-nez v0, :cond_8f

    goto :goto_9f

    :catch_9d
    move-exception v0

    goto :goto_b0

    .line 263
    :cond_9f
    :goto_9f
    :try_start_9f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 264
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_a4
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_cf

    goto :goto_bd

    :catchall_a8
    move-exception v0

    move-object/from16 v15, p0

    :goto_ab
    move-object v11, v12

    goto :goto_c1

    :catch_ad
    move-exception v0

    move-object/from16 v15, p0

    :goto_b0
    :try_start_b0
    const-string v3, "EventDAO"

    const-string v4, "Error while reading data from DB"

    .line 261
    invoke-static {v3, v4, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_bf

    .line 263
    :try_start_b7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 264
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_a4

    .line 269
    :goto_bd
    monitor-exit v2

    return-object v1

    :catchall_bf
    move-exception v0

    goto :goto_ab

    .line 263
    :goto_c1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 264
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 265
    throw v0

    :catchall_ca
    move-exception v0

    move-object/from16 v15, p0

    .line 269
    :goto_cd
    monitor-exit v2
    :try_end_ce
    .catchall {:try_start_b7 .. :try_end_ce} :catchall_cf

    throw v0

    :catchall_cf
    move-exception v0

    goto :goto_cd
.end method

.method public b()V
    .registers 4

    .line 274
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    if-eqz v0, :cond_28

    .line 276
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x3

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    goto :goto_2b

    :catch_21
    move-exception v0

    const-string v1, "deleteOldEvents"

    .line 280
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 283
    :cond_28
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->c()V

    :goto_2b
    return-void
.end method

.method public b(JJ)V
    .registers 13

    .line 426
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter v0

    :try_start_3
    const-string v1, "EventDAO"

    const-string v2, "deleteEventsByStartAndEndTS, start:%d, end:%d"

    const/4 v3, 0x2

    .line 429
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v1, v2, v4}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "ts<=? AND ts>=? AND anonymous=?"

    const/4 v4, 0x3

    .line 432
    new-array v4, v4, [Ljava/lang/String;

    .line 433
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v7

    iget-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->d:Z

    if-eqz p1, :cond_3b

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    :cond_3b
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_3f
    aput-object p1, v4, v3

    const-string p1, "mistat_event"

    .line 435
    invoke-virtual {v1, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_46} :catch_4e
    .catchall {:try_start_3 .. :try_end_46} :catchall_4c

    .line 440
    :try_start_46
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_48
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_61

    goto :goto_59

    :catchall_4c
    move-exception p1

    goto :goto_5b

    :catch_4e
    move-exception p1

    :try_start_4f
    const-string p2, "EventDAO"

    const-string p3, "Error while deleting event by ts from DB"

    .line 438
    invoke-static {p2, p3, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    .line 440
    :try_start_56
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_48

    .line 442
    :goto_59
    monitor-exit v0

    return-void

    .line 440
    :goto_5b
    sget-object p2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {p2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 441
    throw p1

    :catchall_61
    move-exception p1

    .line 442
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public b(Lcom/xiaomi/mistatistic/sdk/data/c;)V
    .registers 7

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "category"

    .line 142
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    .line 143
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, ""

    goto :goto_1b

    :cond_19
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ts"

    .line 144
    iget-wide v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    .line 145
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, ""

    goto :goto_38

    :cond_36
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    :goto_38
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    .line 146
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, ""

    goto :goto_4a

    :cond_48
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    :goto_4a
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    .line 147
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, ""

    goto :goto_5c

    :cond_5a
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    :goto_5c
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "anonymous"

    .line 148
    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter v1

    .line 152
    :try_start_6d
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "mistat_event"

    const-string v4, ""

    .line 153
    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6d .. :try_end_7a} :catch_82
    .catchall {:try_start_6d .. :try_end_7a} :catchall_80

    .line 157
    :try_start_7a
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_7c
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_a6

    goto :goto_9e

    :catchall_80
    move-exception p1

    goto :goto_a0

    :catch_82
    move-exception v0

    :try_start_83
    const-string v2, "EventDAO"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to insert data into DB, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9b
    .catchall {:try_start_83 .. :try_end_9b} :catchall_80

    .line 157
    :try_start_9b
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_7c

    .line 159
    :goto_9e
    monitor-exit v1

    return-void

    .line 157
    :goto_a0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 158
    throw p1

    :catchall_a6
    move-exception p1

    .line 159
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_9b .. :try_end_a8} :catchall_a6

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 180
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    .line 181
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object p3, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter p3

    .line 185
    :try_start_d
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "mistat_event"

    const-string v3, "category=? AND key=?"

    const/4 v4, 0x2

    .line 187
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 p2, 0x1

    aput-object p1, v4, p2

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_23} :catch_2b
    .catchall {:try_start_d .. :try_end_23} :catchall_29

    .line 193
    :try_start_23
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_25
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_4d

    goto :goto_45

    :catchall_29
    move-exception p1

    goto :goto_47

    :catch_2b
    move-exception p2

    :try_start_2c
    const-string v0, "EventDAO"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to update data from DB, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_29

    .line 193
    :try_start_42
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_25

    .line 195
    :goto_45
    monitor-exit p3

    return-void

    .line 193
    :goto_47
    sget-object p2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {p2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 194
    throw p1

    :catchall_4d
    move-exception p1

    .line 195
    monitor-exit p3
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public c()V
    .registers 9

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    .line 291
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter v2

    .line 294
    :try_start_b
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "mistat_event"

    const-string v5, "ts<=? and category <> ?"

    const/4 v6, 0x2

    .line 295
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 297
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    const-string v1, "mistat_basic"

    aput-object v1, v6, v0

    .line 295
    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_32

    const-string v1, "quality_monitor"

    const-string v3, "delete_old_events"

    int-to-long v4, v0

    .line 300
    invoke-static {v1, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_32} :catch_3a
    .catchall {:try_start_b .. :try_end_32} :catchall_38

    .line 305
    :cond_32
    :try_start_32
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_34
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_4d

    goto :goto_45

    :catchall_38
    move-exception v0

    goto :goto_47

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v1, "EventDAO"

    const-string v3, "Error while deleting out-of-date data from DB"

    .line 303
    invoke-static {v1, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    .line 305
    :try_start_42
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_34

    .line 307
    :goto_45
    monitor-exit v2

    return-void

    .line 305
    :goto_47
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 306
    throw v0

    :catchall_4d
    move-exception v0

    .line 307
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public c(J)V
    .registers 6

    .line 377
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    if-eqz v0, :cond_2d

    .line 379
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x4

    .line 380
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "timeStamp"

    .line 381
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 382
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    goto :goto_30

    :catch_26
    move-exception p1

    const-string p2, "deleteEventsByTS"

    .line 384
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 387
    :cond_2d
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->d(J)V

    :goto_30
    return-void
.end method

.method public d()I
    .registers 8

    .line 311
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    if-eqz v0, :cond_44

    .line 312
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->g()V

    const/4 v0, 0x0

    .line 314
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 315
    :cond_c
    iget-boolean v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->f:Z

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v3, :cond_15

    goto :goto_30

    .line 318
    :cond_15
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v1}, Lcom/xiaomi/mistatistic/sdk/a;->a()I

    move-result v1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process getCount , result is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;)V

    return v1

    .line 316
    :cond_30
    :goto_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_3d

    const/4 v5, 0x0

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_c

    return v0

    :catch_3d
    move-exception v1

    const-string v2, "getEventCount"

    .line 322
    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    .line 326
    :cond_44
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->e()I

    move-result v0

    return v0
.end method

.method public d(J)V
    .registers 10

    .line 392
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter v0

    :try_start_3
    const-string v1, "EventDAO"

    const-string v2, "deleteEventsByTS, ts:%d"

    const/4 v3, 0x1

    .line 395
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "mistat_event"

    const-string v4, "ts<=?"

    .line 398
    new-array v3, v3, [Ljava/lang/String;

    .line 399
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    .line 398
    invoke-virtual {v1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_29} :catch_31
    .catchall {:try_start_3 .. :try_end_29} :catchall_2f

    .line 404
    :try_start_29
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_2b
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_44

    goto :goto_3c

    :catchall_2f
    move-exception p1

    goto :goto_3e

    :catch_31
    move-exception p1

    :try_start_32
    const-string p2, "EventDAO"

    const-string v1, "Error while deleting event by ts from DB"

    .line 402
    invoke-static {p2, v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2f

    .line 404
    :try_start_39
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_2b

    .line 406
    :goto_3c
    monitor-exit v0

    return-void

    .line 404
    :goto_3e
    sget-object p2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {p2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 405
    throw p1

    :catchall_44
    move-exception p1

    .line 406
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public e()I
    .registers 14

    .line 332
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 335
    :try_start_5
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "mistat_event"

    const-string v3, "count(*)"

    .line 337
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_1c} :catch_49
    .catchall {:try_start_5 .. :try_end_1c} :catchall_47

    if-eqz v3, :cond_3c

    .line 341
    :try_start_1e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 342
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_28} :catch_37
    .catchall {:try_start_1e .. :try_end_28} :catchall_34

    if-eqz v3, :cond_2d

    .line 349
    :try_start_2a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_2d
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    monitor-exit v0

    return v2

    :catchall_34
    move-exception v1

    move-object v2, v3

    goto :goto_5b

    :catch_37
    move-exception v2

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_4a

    :cond_3c
    if-eqz v3, :cond_41

    .line 349
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_41
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_43
    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_61

    goto :goto_59

    :catchall_47
    move-exception v1

    goto :goto_5b

    :catch_49
    move-exception v3

    :goto_4a
    :try_start_4a
    const-string v4, "EventDAO"

    const-string v5, "Error while getting count from DB"

    .line 346
    invoke-static {v4, v5, v3}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_47

    if-eqz v2, :cond_56

    .line 349
    :try_start_53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_56
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_43

    .line 353
    :goto_59
    monitor-exit v0

    return v1

    :goto_5b
    if-eqz v2, :cond_63

    .line 349
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_63

    :catchall_61
    move-exception v1

    goto :goto_69

    .line 351
    :cond_63
    :goto_63
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 352
    throw v1

    .line 354
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_61

    throw v1
.end method

.method public f()Z
    .registers 13

    .line 446
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    monitor-enter v0

    const/4 v1, 0x0

    .line 451
    :try_start_4
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "mistat_event"

    const/4 v5, 0x0

    const-string v6, "anonymous=?"

    const/4 v2, 0x1

    .line 452
    new-array v7, v2, [Ljava/lang/String;

    .line 455
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ts DESC"

    const/16 v11, 0x1f4

    .line 459
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 452
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 460
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_2c} :catch_37
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    if-eqz v3, :cond_2f

    const/4 v1, 0x1

    .line 466
    :cond_2f
    :try_start_2f
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    :goto_31
    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_4a

    goto :goto_42

    :catchall_35
    move-exception v1

    goto :goto_44

    :catch_37
    move-exception v2

    :try_start_38
    const-string v3, "EventDAO"

    const-string v4, "Error while isExistAnonymousData from DB"

    .line 464
    invoke-static {v3, v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 466
    :try_start_3f
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    goto :goto_31

    .line 468
    :goto_42
    monitor-exit v0

    return v1

    .line 466
    :goto_44
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 467
    throw v1

    :catchall_4a
    move-exception v1

    .line 469
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_4a

    throw v1
.end method
