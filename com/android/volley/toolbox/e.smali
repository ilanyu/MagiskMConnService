.class public Lcom/android/volley/toolbox/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/f;


# static fields
.field protected static final a:Z

.field private static final d:I = 0xbb8

.field private static final e:I = 0x1000


# instance fields
.field protected final b:Lcom/android/volley/toolbox/j;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final c:Lcom/android/volley/toolbox/f;

.field private final f:Lcom/android/volley/toolbox/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-boolean v0, Lcom/android/volley/VolleyLog;->b:Z

    sput-boolean v0, Lcom/android/volley/toolbox/e;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/d;)V
    .registers 4

    .line 96
    new-instance v0, Lcom/android/volley/toolbox/f;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/f;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/e;-><init>(Lcom/android/volley/toolbox/d;Lcom/android/volley/toolbox/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/d;Lcom/android/volley/toolbox/f;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/volley/toolbox/e;->f:Lcom/android/volley/toolbox/d;

    .line 108
    iput-object p1, p0, Lcom/android/volley/toolbox/e;->b:Lcom/android/volley/toolbox/j;

    .line 109
    iput-object p2, p0, Lcom/android/volley/toolbox/e;->c:Lcom/android/volley/toolbox/f;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/j;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    new-instance v0, Lcom/android/volley/toolbox/f;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/f;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/e;-><init>(Lcom/android/volley/toolbox/j;Lcom/android/volley/toolbox/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/j;Lcom/android/volley/toolbox/f;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/volley/toolbox/e;->b:Lcom/android/volley/toolbox/j;

    .line 88
    new-instance v0, Lcom/android/volley/toolbox/a;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/a;-><init>(Lcom/android/volley/toolbox/j;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/e;->f:Lcom/android/volley/toolbox/d;

    .line 89
    iput-object p2, p0, Lcom/android/volley/toolbox/e;->c:Lcom/android/volley/toolbox/f;

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/e;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/e;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 340
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 341
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/e;

    .line 342
    invoke-virtual {v2}, Lcom/android/volley/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 348
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    if-eqz p0, :cond_56

    .line 350
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_93

    .line 351
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/e;

    .line 352
    invoke-virtual {p1}, Lcom/android/volley/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 353
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 359
    :cond_56
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_93

    .line 360
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_68
    :goto_68
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 361
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 362
    new-instance v2, Lcom/android/volley/e;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/android/volley/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_93
    return-object v1
.end method

.method private a(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 260
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    iget-object v1, p1, Lcom/android/volley/Cache$Entry;->b:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v1, "If-None-Match"

    .line 263
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_17
    iget-wide v1, p1, Lcom/android/volley/Cache$Entry;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2a

    const-string v1, "If-Modified-Since"

    .line 267
    iget-wide v2, p1, Lcom/android/volley/Cache$Entry;->d:J

    .line 268
    invoke-static {v2, v3}, Lcom/android/volley/toolbox/h;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v0
.end method

.method protected static a([Lcom/android/volley/e;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/volley/e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 319
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 320
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/volley/e;->a()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/volley/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return-object v0
.end method

.method private a(JLcom/android/volley/Request;[BI)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 221
    sget-boolean v0, Lcom/android/volley/toolbox/e;->a:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_3f

    :cond_a
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v1, 0x5

    .line 222
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    .line 226
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    if-eqz p4, :cond_22

    .line 227
    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_24

    :cond_22
    const-string p2, "null"

    :goto_24
    aput-object p2, v1, p1

    const/4 p1, 0x3

    .line 228
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x4

    .line 229
    invoke-virtual {p3}, Lcom/android/volley/Request;->x()Lcom/android/volley/n;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/volley/n;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    .line 222
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/q;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/q;
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Lcom/android/volley/Request;->x()Lcom/android/volley/n;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lcom/android/volley/Request;->w()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 245
    :try_start_b
    invoke-interface {v0, p2}, Lcom/android/volley/n;->a(Lcom/android/volley/q;)V
    :try_end_e
    .catch Lcom/android/volley/q; {:try_start_b .. :try_end_e} :catch_22

    const-string p2, "%s-retry [timeout=%s]"

    .line 251
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception p2

    .line 247
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 249
    throw p2
.end method

.method private a(Ljava/io/InputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/o;
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/android/volley/toolbox/q;

    iget-object v1, p0, Lcom/android/volley/toolbox/e;->c:Lcom/android/volley/toolbox/f;

    invoke-direct {v0, v1, p2}, Lcom/android/volley/toolbox/q;-><init>(Lcom/android/volley/toolbox/f;I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 288
    :try_start_b
    iget-object v2, p0, Lcom/android/volley/toolbox/e;->c:Lcom/android/volley/toolbox/f;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/android/volley/toolbox/f;->a(I)[B

    move-result-object v2
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_43

    .line 290
    :goto_13
    :try_start_13
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1e

    .line 291
    invoke-virtual {v0, v2, p2, v1}, Lcom/android/volley/toolbox/q;->write([BII)V

    goto :goto_13

    .line 293
    :cond_1e
    invoke-virtual {v0}, Lcom/android/volley/toolbox/q;->toByteArray()[B

    move-result-object v1
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_38

    if-eqz p1, :cond_2f

    .line 298
    :try_start_24
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2f

    :catch_28
    const-string p1, "Error occurred when closing InputStream"

    .line 303
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/volley/toolbox/e;->c:Lcom/android/volley/toolbox/f;

    invoke-virtual {p1, v2}, Lcom/android/volley/toolbox/f;->a([B)V

    .line 306
    invoke-virtual {v0}, Lcom/android/volley/toolbox/q;->close()V

    return-object v1

    :catchall_38
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_44

    .line 286
    :cond_3d
    :try_start_3d
    new-instance v2, Lcom/android/volley/o;

    invoke-direct {v2}, Lcom/android/volley/o;-><init>()V

    throw v2
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v2

    :goto_44
    if-eqz p1, :cond_51

    .line 298
    :try_start_46
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_51

    .line 303
    :catch_4a
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "Error occurred when closing InputStream"

    invoke-static {p2, p1}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/volley/toolbox/e;->c:Lcom/android/volley/toolbox/f;

    invoke-virtual {p1, v1}, Lcom/android/volley/toolbox/f;->a([B)V

    .line 306
    invoke-virtual {v0}, Lcom/android/volley/toolbox/q;->close()V

    throw v2
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/i;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/q;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 118
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 122
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->h()Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/volley/toolbox/e;->a(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    .line 123
    iget-object v3, v7, Lcom/android/volley/toolbox/e;->f:Lcom/android/volley/toolbox/d;

    invoke-virtual {v3, v8, v0}, Lcom/android/volley/toolbox/d;->a(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/i;

    move-result-object v12
    :try_end_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_1c} :catch_167
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_1c} :catch_14b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_be

    .line 124
    :try_start_1c
    invoke-virtual {v12}, Lcom/android/volley/toolbox/i;->a()I

    move-result v14

    .line 126
    invoke-virtual {v12}, Lcom/android/volley/toolbox/i;->b()Ljava/util/List;

    move-result-object v13
    :try_end_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c .. :try_end_24} :catch_167
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_24} :catch_14b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_b9

    const/16 v0, 0x130

    if-ne v14, v0, :cond_65

    .line 129
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->h()Lcom/android/volley/Cache$Entry;

    move-result-object v0

    if-nez v0, :cond_44

    .line 131
    new-instance v0, Lcom/android/volley/i;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v1, 0x0

    sub-long v19, v3, v9

    move-object v15, v0

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v21}, Lcom/android/volley/i;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 139
    :cond_44
    invoke-static {v13, v0}, Lcom/android/volley/toolbox/e;->a(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v27

    .line 140
    new-instance v1, Lcom/android/volley/i;

    const/16 v22, 0x130

    iget-object v0, v0, Lcom/android/volley/Cache$Entry;->a:[B

    const/16 v24, 0x1

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v25, v3, v9

    move-object/from16 v21, v1

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v27}, Lcom/android/volley/i;-><init>(I[BZJLjava/util/List;)V
    :try_end_5e
    .catch Ljava/net/SocketTimeoutException; {:try_start_28 .. :try_end_5e} :catch_167
    .catch Ljava/net/MalformedURLException; {:try_start_28 .. :try_end_5e} :catch_14b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_5e} :catch_5f

    return-object v1

    :catch_5f
    move-exception v0

    move-object v15, v2

    move-object/from16 v19, v13

    goto/16 :goto_c3

    .line 149
    :cond_65
    :try_start_65
    invoke-virtual {v12}, Lcom/android/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0
    :try_end_69
    .catch Ljava/net/SocketTimeoutException; {:try_start_65 .. :try_end_69} :catch_167
    .catch Ljava/net/MalformedURLException; {:try_start_65 .. :try_end_69} :catch_14b
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_69} :catch_b6

    if-eqz v0, :cond_74

    .line 152
    :try_start_6b
    invoke-virtual {v12}, Lcom/android/volley/toolbox/i;->c()I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/android/volley/toolbox/e;->a(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_73
    .catch Ljava/net/SocketTimeoutException; {:try_start_6b .. :try_end_73} :catch_167
    .catch Ljava/net/MalformedURLException; {:try_start_6b .. :try_end_73} :catch_14b
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_73} :catch_5f

    goto :goto_76

    .line 156
    :cond_74
    :try_start_74
    new-array v0, v11, [B
    :try_end_76
    .catch Ljava/net/SocketTimeoutException; {:try_start_74 .. :try_end_76} :catch_167
    .catch Ljava/net/MalformedURLException; {:try_start_74 .. :try_end_76} :catch_14b
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_76} :catch_b6

    :goto_76
    move-object/from16 v20, v0

    .line 160
    :try_start_78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    sub-long v2, v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move v6, v14

    .line 161
    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/e;->a(JLcom/android/volley/Request;[BI)V

    const/16 v0, 0xc8

    if-lt v14, v0, :cond_a6

    const/16 v0, 0x12b

    if-gt v14, v0, :cond_a6

    .line 166
    new-instance v0, Lcom/android/volley/i;

    const/16 v16, 0x0

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_99
    .catch Ljava/net/SocketTimeoutException; {:try_start_78 .. :try_end_99} :catch_167
    .catch Ljava/net/MalformedURLException; {:try_start_78 .. :try_end_99} :catch_14b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_99} :catch_af

    const/4 v3, 0x0

    sub-long v17, v1, v9

    move-object v1, v13

    move-object v13, v0

    move-object/from16 v15, v20

    move-object/from16 v19, v1

    :try_start_a2
    invoke-direct/range {v13 .. v19}, Lcom/android/volley/i;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_a6
    move-object v1, v13

    .line 164
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_ad
    .catch Ljava/net/SocketTimeoutException; {:try_start_a2 .. :try_end_ad} :catch_167
    .catch Ljava/net/MalformedURLException; {:try_start_a2 .. :try_end_ad} :catch_14b
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ad} :catch_ad

    :catch_ad
    move-exception v0

    goto :goto_b1

    :catch_af
    move-exception v0

    move-object v1, v13

    :goto_b1
    move-object/from16 v19, v1

    move-object/from16 v15, v20

    goto :goto_c3

    :catch_b6
    move-exception v0

    move-object v1, v13

    goto :goto_ba

    :catch_b9
    move-exception v0

    :goto_ba
    move-object/from16 v19, v1

    move-object v15, v2

    goto :goto_c3

    :catch_be
    move-exception v0

    move-object/from16 v19, v1

    move-object v12, v2

    move-object v15, v12

    :goto_c3
    if-eqz v12, :cond_145

    .line 179
    invoke-virtual {v12}, Lcom/android/volley/toolbox/i;->a()I

    move-result v0

    const-string v1, "Unexpected response code %d for %s"

    const/4 v2, 0x2

    .line 183
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_139

    .line 186
    new-instance v1, Lcom/android/volley/i;

    const/16 v16, 0x0

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v17, v2, v9

    move-object v13, v1

    move v14, v0

    invoke-direct/range {v13 .. v19}, Lcom/android/volley/i;-><init>(I[BZJLjava/util/List;)V

    const/16 v2, 0x191

    if-eq v0, v2, :cond_12d

    const/16 v2, 0x193

    if-ne v0, v2, :cond_f8

    goto :goto_12d

    :cond_f8
    const/16 v2, 0x190

    if-lt v0, v2, :cond_107

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_101

    goto :goto_107

    .line 199
    :cond_101
    new-instance v0, Lcom/android/volley/c;

    invoke-direct {v0, v1}, Lcom/android/volley/c;-><init>(Lcom/android/volley/i;)V

    throw v0

    :cond_107
    :goto_107
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_127

    const/16 v2, 0x257

    if-gt v0, v2, :cond_127

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->u()Z

    move-result v0

    if-eqz v0, :cond_121

    const-string v0, "server"

    .line 202
    new-instance v2, Lcom/android/volley/o;

    invoke-direct {v2, v1}, Lcom/android/volley/o;-><init>(Lcom/android/volley/i;)V

    invoke-static {v0, v8, v2}, Lcom/android/volley/toolbox/e;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/q;)V

    goto/16 :goto_8

    .line 205
    :cond_121
    new-instance v0, Lcom/android/volley/o;

    invoke-direct {v0, v1}, Lcom/android/volley/o;-><init>(Lcom/android/volley/i;)V

    throw v0

    .line 209
    :cond_127
    new-instance v0, Lcom/android/volley/o;

    invoke-direct {v0, v1}, Lcom/android/volley/o;-><init>(Lcom/android/volley/i;)V

    throw v0

    :cond_12d
    :goto_12d
    const-string v0, "auth"

    .line 195
    new-instance v2, Lcom/android/volley/a;

    invoke-direct {v2, v1}, Lcom/android/volley/a;-><init>(Lcom/android/volley/i;)V

    invoke-static {v0, v8, v2}, Lcom/android/volley/toolbox/e;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/q;)V

    goto/16 :goto_8

    :cond_139
    const-string v0, "network"

    .line 212
    new-instance v1, Lcom/android/volley/h;

    invoke-direct {v1}, Lcom/android/volley/h;-><init>()V

    invoke-static {v0, v8, v1}, Lcom/android/volley/toolbox/e;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/q;)V

    goto/16 :goto_8

    .line 181
    :cond_145
    new-instance v1, Lcom/android/volley/j;

    invoke-direct {v1, v0}, Lcom/android/volley/j;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_14b
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_167
    const-string v0, "socket"

    .line 173
    new-instance v1, Lcom/android/volley/p;

    invoke-direct {v1}, Lcom/android/volley/p;-><init>()V

    invoke-static {v0, v8, v1}, Lcom/android/volley/toolbox/e;->a(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/q;)V

    goto/16 :goto_8
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    .line 276
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v3, p3

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
