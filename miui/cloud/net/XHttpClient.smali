.class public final Lmiui/cloud/net/XHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/net/XHttpClient$HttpRequest;,
        Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;,
        Lmiui/cloud/net/XHttpClient$DataProcessorFactor;,
        Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;,
        Lmiui/cloud/net/XHttpClient$ISendDataProcessor;,
        Lmiui/cloud/net/XHttpClient$DataConversionException;,
        Lmiui/cloud/net/XHttpClient$IResponseHandler;,
        Lmiui/cloud/net/XHttpClient$HttpResponse;
    }
.end annotation


# static fields
.field private static final a:Z = true

.field private static final b:I = 0x5

.field private static final c:Ljava/lang/String; = "utf-8"

.field private static final d:I = 0xc8

.field private static final e:I = 0x7530

.field private static final f:Ljava/lang/String; = "[TEST]"

.field private static final g:I = 0x400

.field private static final h:Ljava/lang/String; = "TEST OK"

.field private static final i:I = 0xc8


# instance fields
.field private volatile j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

.field private volatile k:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

.field private l:I

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lmiui/cloud/net/XHttpClient$HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    invoke-direct {v0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->k:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    const/4 v0, 0x5

    .line 275
    iput v0, p0, Lmiui/cloud/net/XHttpClient;->l:I

    .line 277
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->m:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lmiui/cloud/net/XHttpClient;->n:I

    return-void
.end method

.method static synthetic a(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$DataProcessorFactor;
    .registers 1

    .line 21
    iget-object p0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    return-object p0
.end method

.method private a()V
    .registers 5

    .line 255
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->n:I

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->l:I

    if-ge v0, v1, :cond_4d

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->m:Ljava/util/LinkedList;

    .line 256
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4d

    .line 259
    :cond_f
    :goto_f
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->n:I

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->l:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_39

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->m:Ljava/util/LinkedList;

    .line 260
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 261
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 263
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->n:I

    add-int/2addr v0, v2

    iput v0, p0, Lmiui/cloud/net/XHttpClient;->n:I

    goto :goto_f

    :cond_39
    const/4 v0, 0x2

    .line 267
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "task++"

    aput-object v3, v0, v1

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->a([Ljava/lang/Object;)V

    return-void

    :cond_4d
    :goto_4d
    return-void
.end method

.method private declared-synchronized a(Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 3

    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->a()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 243
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    .line 240
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lmiui/cloud/net/XHttpClient;->b(Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method

.method static synthetic b(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;
    .registers 1

    .line 21
    iget-object p0, p0, Lmiui/cloud/net/XHttpClient;->k:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    return-object p0
.end method

.method private declared-synchronized b(Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 5

    monitor-enter p0

    .line 246
    :try_start_1
    iget p1, p0, Lmiui/cloud/net/XHttpClient;->n:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/cloud/net/XHttpClient;->n:I

    const/4 p1, 0x2

    .line 249
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Task--"

    aput-object v2, p1, v1

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->a([Ljava/lang/Object;)V

    .line 251
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->a()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 252
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    .line 245
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "GET"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 189
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "POST"

    .line 213
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v2, "utf-8"

    .line 214
    invoke-virtual {v0, v2, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 213
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "POST"

    .line 199
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 200
    invoke-virtual {v0, p3, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 199
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 129
    new-instance v0, Lmiui/cloud/common/g;

    invoke-direct {v0}, Lmiui/cloud/common/g;-><init>()V

    .line 132
    new-instance v10, Lmiui/cloud/common/XBlockCallback;

    const-class v1, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    invoke-direct {v10, v1}, Lmiui/cloud/common/XBlockCallback;-><init>(Ljava/lang/Class;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v10

    .line 136
    invoke-virtual/range {v1 .. v9}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V

    .line 139
    new-instance v1, Lmiui/cloud/net/XHttpClient$1;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lmiui/cloud/net/XHttpClient$1;-><init>(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/common/g;)V

    invoke-virtual {v10, v1}, Lmiui/cloud/common/XBlockCallback;->a(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0}, Lmiui/cloud/common/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$HttpResponse;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 194
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "POST"

    .line 220
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v2, "utf-8"

    .line 221
    invoke-virtual {v0, v2, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 220
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "POST"

    .line 206
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 207
    invoke-virtual {v0, p4, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 206
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(I)V
    .registers 2

    monitor-enter p0

    .line 236
    :try_start_1
    iput p1, p0, Lmiui/cloud/net/XHttpClient;->l:I

    .line 237
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->a()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 238
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    .line 235
    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lmiui/cloud/common/c;Ljava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    .line 161
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 162
    invoke-virtual {v0, p3, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p4

    move-object v8, p5

    .line 161
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lmiui/cloud/common/c;Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    .line 176
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v2, "utf-8"

    .line 177
    invoke-virtual {v0, v2, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    .line 176
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 119
    new-instance v10, Lmiui/cloud/net/XHttpClient$HttpRequest;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lmiui/cloud/net/XHttpClient$HttpRequest;-><init>(Lmiui/cloud/net/XHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lmiui/cloud/net/XHttpClient;->a(Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Lmiui/cloud/common/c;Ljava/lang/Object;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    .line 169
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 170
    invoke-virtual {v0, p4, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p5

    move-object v8, p6

    .line 169
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/common/c;Ljava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    .line 183
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v2, "utf-8"

    .line 184
    invoke-virtual {v0, v2, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    .line 183
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lmiui/cloud/common/c;Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    .line 156
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lmiui/cloud/common/c;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "GET"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    .line 151
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lmiui/cloud/net/XHttpClient$DataProcessorFactor;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 228
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient;->j:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    return-void

    .line 227
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a(Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient;->k:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    return-void
.end method
