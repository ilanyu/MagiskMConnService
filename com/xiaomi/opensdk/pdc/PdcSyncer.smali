.class public Lcom/xiaomi/opensdk/pdc/PdcSyncer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;,
        Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;,
        Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;,
        Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PdcSyncer"

.field private static final b:I = 0xa

.field private static final c:[I

.field private static final d:Ljava/lang/String; = "pdc_syncToken_"

.field private static final e:Ljava/lang/String; = "pdc_watermark_"

.field private static final f:Ljava/lang/String; = "pdc_quota_day"

.field private static final g:Ljava/lang/String; = "pdc_quota_count"

.field private static final h:Ljava/lang/String; = "upload"

.field private static final i:I = 0x3e8

.field private static final j:Ljava/lang/String; = "download"

.field private static final k:I = 0x3e8


# instance fields
.field private l:Landroid/content/Context;

.field private final m:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->c:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1388
        0x2710
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->l:Landroid/content/Context;

    .line 126
    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->l:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->m:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/pdc/j;)Lcom/xiaomi/opensdk/pdc/UploadOperation;
    .registers 12

    .line 232
    new-instance v0, Lcom/xiaomi/opensdk/pdc/i;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/pdc/i;-><init>(Lcom/xiaomi/opensdk/pdc/k;)V

    .line 233
    iget-wide v1, p2, Lcom/xiaomi/opensdk/pdc/j;->a:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_38

    .line 234
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    if-eqz p1, :cond_30

    .line 237
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->a:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    if-ne p1, v1, :cond_28

    .line 240
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    iget-object v6, p2, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/a;

    move-result-object p1

    return-object p1

    .line 238
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot create a deleted record"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type is required for create"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_38
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->b:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    if-ne p1, v1, :cond_79

    .line 244
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    if-eqz p1, :cond_71

    .line 247
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    if-eqz p1, :cond_69

    .line 250
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    if-nez p1, :cond_61

    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    if-nez p1, :cond_61

    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    if-nez p1, :cond_61

    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    if-nez p1, :cond_61

    .line 254
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    iget-wide v2, p2, Lcom/xiaomi/opensdk/pdc/j;->a:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/xiaomi/opensdk/pdc/i;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/opensdk/pdc/c;

    move-result-object p1

    return-object p1

    .line 252
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "do not set data fields for delete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "id is required for delete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type is required for delete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_79
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    if-eqz p1, :cond_9c

    .line 259
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    if-eqz p1, :cond_94

    .line 262
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    iget-wide v6, p2, Lcom/xiaomi/opensdk/pdc/j;->a:J

    iget-object v8, p2, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J[Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/l;

    move-result-object p1

    return-object p1

    .line 260
    :cond_94
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "id is required for update"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_9c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type is required for update"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/j;
    .registers 15

    .line 53
    new-instance v10, Lcom/xiaomi/opensdk/pdc/j;

    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->b:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-wide v1, p0

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v10
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/j;
    .registers 19

    .line 49
    new-instance v10, Lcom/xiaomi/opensdk/pdc/j;

    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->a:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    move-object v0, v10

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v10
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/j;
    .registers 17

    .line 44
    new-instance v10, Lcom/xiaomi/opensdk/pdc/j;

    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->a:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    const-wide/16 v1, -0x1

    move-object v0, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v10
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 404
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdc_syncToken_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdc_watermark_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    invoke-interface {p3, p1, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 407
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;ILjava/util/HashSet;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/opensdk/pdc/k;",
            "Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;",
            "Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;",
            "I",
            "Ljava/util/HashSet<",
            "Lcom/xiaomi/opensdk/pdc/j;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 273
    :goto_2
    :try_start_2
    sget-object v2, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->c:[I

    array-length v2, v2

    if-ge v1, v2, :cond_152

    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_12

    return v0

    .line 277
    :cond_12
    iget-object v2, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->a()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->e()Z

    move-result v3

    if-eqz v3, :cond_110

    .line 279
    new-instance v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;

    invoke-direct {v3, p1, p4}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;-><init>(Lcom/xiaomi/opensdk/pdc/k;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 281
    :goto_25
    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->a()I

    move-result v6

    if-ge v4, v6, :cond_f3

    .line 282
    invoke-virtual {v2, v4}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->a(I)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v6

    const/4 v7, 0x0

    .line 284
    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->e()Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 285
    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->a()Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    if-ne v8, v9, :cond_57

    .line 286
    iget-object v8, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    iget-object v9, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/opensdk/pdc/j;

    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->b()Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v6

    .line 286
    invoke-interface {p2, v8, v9, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->a(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/j;Lcom/xiaomi/opensdk/pdc/j;)V

    goto/16 :goto_d4

    .line 289
    :cond_57
    iget-object v7, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v7, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 292
    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->a()Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    move-result-object v8

    iget-object v9, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/opensdk/pdc/j;

    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->c()Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v6

    .line 290
    invoke-interface {p2, v7, v8, v9, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->a(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/j;Lcom/xiaomi/opensdk/pdc/j;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v7

    .line 293
    invoke-virtual {p5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    const-string v6, "PdcSyncer"

    const-string v8, "onUploadConflict: Repetitive bad record"

    .line 294
    invoke-static {v6, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 297
    :cond_8a
    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->j()Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 298
    iget-object v6, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/xiaomi/opensdk/pdc/j;

    add-int/lit8 v5, v5, 0x1

    goto :goto_d4

    .line 300
    :cond_9c
    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->b(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 301
    iget-object v7, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v7, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    iget-object v8, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/opensdk/pdc/j;

    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v6

    invoke-interface {p2, v7, v8, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->a(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/j;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v7

    .line 303
    invoke-virtual {p5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    const-string v6, "PdcSyncer"

    const-string v8, "onUploadConflict: Repetitive bad record"

    .line 304
    invoke-static {v6, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    :goto_d4
    if-eqz v7, :cond_ef

    .line 308
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-direct {p0, p1, v7}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/pdc/j;)Lcom/xiaomi/opensdk/pdc/UploadOperation;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    iget-object v7, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ef
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_25

    .line 313
    :cond_f3
    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->a()I

    move-result v2

    if-eq v5, v2, :cond_107

    .line 314
    iget-object p1, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    iput-object p1, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 315
    iget-object p1, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    iput-object p1, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    .line 316
    iget-object p1, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    iput-object p1, p3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    const/4 p1, 0x1

    return p1

    .line 319
    :cond_107
    sget-object v2, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->c:[I

    aget v2, v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_13d

    .line 320
    :cond_110
    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->j()Z

    move-result v3

    if-nez v3, :cond_13d

    const-string p1, "PdcSyncer"

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BatchResult Error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " description:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_2 .. :try_end_13c} :catch_14a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_13c} :catch_141

    return v0

    :cond_13d
    :goto_13d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_141
    move-exception p1

    const-string p2, "PdcSyncer"

    const-string p3, "InterruptedException in commitBatch()"

    .line 328
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_152

    :catch_14a
    move-exception p1

    const-string p2, "PdcSyncer"

    const-string p3, "SyncException in commitBatch()"

    .line 326
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_152
    :goto_152
    return v0
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 11

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdc_quota_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdc_quota_day"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->m:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    cmp-long v2, v4, v2

    const/4 v3, 0x0

    if-nez v2, :cond_3e

    .line 426
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->m:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    const/4 v6, 0x1

    add-int/2addr v2, v6

    if-le v2, p2, :cond_62

    const-string v0, "PdcSyncer"

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quota "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "exceeds limit "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 433
    :cond_62
    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->m:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v6
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 411
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->m:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdc_syncToken_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    .line 415
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->m:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdc_watermark_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 400
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    .line 391
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    array-length v1, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_47

    aget-object v3, p2, v2

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdc_syncToken_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdc_watermark_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 396
    :cond_47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z
    .registers 3

    .line 438
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/k;ILcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;)Z
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "upload"

    const/16 v1, 0x3e8

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/16 v0, 0xa

    if-gt p2, v0, :cond_8a

    .line 194
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 195
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->a()Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    .line 199
    :cond_1c
    :try_start_1c
    new-instance v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;

    invoke-direct {v8, p1, p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;-><init>(Lcom/xiaomi/opensdk/pdc/k;I)V

    .line 201
    :cond_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_85

    if-eqz v2, :cond_2f

    .line 227
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->b()V

    return v1

    .line 204
    :cond_2f
    :try_start_2f
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->c()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_52

    .line 220
    :cond_35
    iget-object v2, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, v8

    move v6, p2

    move-object v7, v0

    .line 221
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;ILjava/util/HashSet;)Z

    move-result v2
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_85

    if-nez v2, :cond_35

    .line 227
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->b()V

    return v1

    :cond_4d
    const/4 p1, 0x1

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->b()V

    return p1

    .line 208
    :cond_52
    :try_start_52
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 209
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/xiaomi/opensdk/pdc/j;

    .line 210
    invoke-direct {p0, p1, v2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/pdc/j;)Lcom/xiaomi/opensdk/pdc/UploadOperation;

    move-result-object v4

    .line 211
    iget-object v5, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v5, v4}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v4, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v2, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_6d
    iget-object v2, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->size()I

    move-result v2

    if-lt v2, p2, :cond_21

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, v8

    move v6, p2

    move-object v7, v0

    .line 215
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;ILjava/util/HashSet;)Z

    move-result v2
    :try_end_7f
    .catchall {:try_start_52 .. :try_end_7f} :catchall_85

    if-nez v2, :cond_6d

    .line 227
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->b()V

    return v1

    :catchall_85
    move-exception p1

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->b()V

    throw p1

    .line 192
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "batch size cannot exceed 10"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;)Z
    .registers 14

    const-string v0, "download"

    const/16 v1, 0x3e8

    .line 334
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 338
    :cond_c
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->a()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    .line 343
    :try_start_14
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->c(Ljava/lang/String;Ljava/lang/String;)J

    .line 346
    :cond_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_33} :catch_cf
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_14 .. :try_end_33} :catch_c3
    .catchall {:try_start_14 .. :try_end_33} :catchall_c1

    if-eqz v3, :cond_39

    .line 385
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->b()V

    return v1

    :cond_39
    move-object v3, v0

    const/4 v0, 0x0

    .line 349
    :goto_3b
    :try_start_3b
    sget-object v4, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->c:[I

    array-length v4, v4

    if-ge v0, v4, :cond_65

    .line 350
    new-instance v3, Lcom/xiaomi/opensdk/pdc/DownloadOperation;

    invoke-direct {v3, p1, v2}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->a()Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->e()Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_65

    .line 353
    :cond_50
    invoke-virtual {v3}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->j()Z

    move-result v4
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_54} :catch_cf
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_3b .. :try_end_54} :catch_c3
    .catchall {:try_start_3b .. :try_end_54} :catchall_c1

    if-nez v4, :cond_5a

    .line 385
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->b()V

    return v1

    .line 356
    :cond_5a
    :try_start_5a
    sget-object v4, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->c:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_65
    :goto_65
    move-object v0, v3

    .line 358
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->e()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 361
    :goto_6f
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->d()I

    move-result v5

    if-ge v2, v5, :cond_83

    .line 362
    invoke-virtual {v0, v2}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->a(I)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->a(Lcom/xiaomi/opensdk/pdc/j;)Z

    move-result v5

    if-nez v5, :cond_80

    const/4 v3, 0x0

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_83
    if-eqz v3, :cond_9b

    .line 367
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->b()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->a()J

    move-result-wide v9

    .line 369
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/k;->b()Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_9a
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_9a} :catch_cf
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_5a .. :try_end_9a} :catch_c3
    .catchall {:try_start_5a .. :try_end_9a} :catchall_c1

    goto :goto_b7

    .line 385
    :cond_9b
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->b()V

    return v1

    .line 373
    :cond_9f
    :try_start_9f
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 374
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->c()V

    .line 375
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/k;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_b7
    :goto_b7
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->c()Z

    move-result v3
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_9f .. :try_end_bb} :catch_cf
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_9f .. :try_end_bb} :catch_c3
    .catchall {:try_start_9f .. :try_end_bb} :catchall_c1

    if-nez v3, :cond_2b

    .line 385
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->b()V

    return v4

    :catchall_c1
    move-exception p1

    goto :goto_db

    :catch_c3
    move-exception p1

    :try_start_c4
    const-string v0, "PdcSyncer"

    const-string v2, "SyncException in download()"

    .line 382
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_c1

    .line 385
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->b()V

    return v1

    :catch_cf
    move-exception p1

    :try_start_d0
    const-string v0, "PdcSyncer"

    const-string v2, "InterruptedException in download()"

    .line 379
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_c1

    .line 385
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->b()V

    return v1

    :goto_db
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->b()V

    throw p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;)Z
    .registers 4

    const/16 v0, 0xa

    .line 182
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->a(Lcom/xiaomi/opensdk/pdc/k;ILcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z
    .registers 3

    .line 442
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
