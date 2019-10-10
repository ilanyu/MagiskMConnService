.class public Lcn/kuaipan/android/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field private static final f:Ljava/lang/String; = "KscHttpTransmitter"

.field private static final g:I = 0x2bf20

.field private static final h:I = 0x708

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x4

.field private static final l:I = 0x7


# instance fields
.field private final m:Landroid/content/Context;

.field private final n:Lcn/kuaipan/android/http/h;

.field private final o:Lcn/kuaipan/android/http/h;

.field private final p:Lcn/kuaipan/android/http/j;

.field private final q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "+",
            "Lorg/apache/http/client/HttpClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcn/kuaipan/android/http/client/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcn/kuaipan/android/utils/a;->a(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lcn/kuaipan/android/http/g;->m:Landroid/content/Context;

    .line 60
    new-instance v0, Lcn/kuaipan/android/http/h;

    const/16 v1, 0x708

    invoke-direct {v0, v1}, Lcn/kuaipan/android/http/h;-><init>(I)V

    iput-object v0, p0, Lcn/kuaipan/android/http/g;->n:Lcn/kuaipan/android/http/h;

    .line 61
    new-instance v0, Lcn/kuaipan/android/http/h;

    invoke-direct {v0, v1}, Lcn/kuaipan/android/http/h;-><init>(I)V

    iput-object v0, p0, Lcn/kuaipan/android/http/g;->o:Lcn/kuaipan/android/http/h;

    const/4 v0, 0x1

    .line 63
    invoke-static {p1, v0}, Lcn/kuaipan/android/http/j;->a(Landroid/content/Context;Z)Lcn/kuaipan/android/http/j;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/http/g;->p:Lcn/kuaipan/android/http/j;

    .line 64
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcn/kuaipan/android/http/g;->q:Landroid/util/SparseArray;

    .line 65
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcn/kuaipan/android/http/g;->r:Landroid/util/SparseArray;

    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 237
    :cond_4
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_f

    .line 238
    :cond_b
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method private a(I)Lorg/apache/http/client/HttpClient;
    .registers 9

    and-int/lit8 p1, p1, 0x7

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 203
    iget-object v2, p0, Lcn/kuaipan/android/http/g;->q:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_27

    .line 205
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/32 v5, 0x2bf20

    cmp-long v3, v3, v5

    if-lez v3, :cond_22

    goto :goto_27

    .line 219
    :cond_22
    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/apache/http/client/HttpClient;

    goto :goto_5d

    .line 206
    :cond_27
    :goto_27
    iget-object v2, p0, Lcn/kuaipan/android/http/g;->r:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    if-eqz v3, :cond_3f

    .line 210
    invoke-static {v2}, Lcn/kuaipan/android/http/client/KscHttpClient;->a(Ljava/lang/String;)Lcn/kuaipan/android/http/client/KscHttpClient;

    move-result-object v2

    goto :goto_4f

    :cond_3f
    and-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_45

    const/4 v3, 0x1

    goto :goto_46

    :cond_45
    const/4 v3, 0x0

    :goto_46
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_4b

    const/4 v4, 0x1

    .line 212
    :cond_4b
    invoke-static {v2, v3, v4}, Lcn/kuaipan/android/http/client/KscHttpClient;->a(Ljava/lang/String;ZZ)Lcn/kuaipan/android/http/client/KscHttpClient;

    move-result-object v2

    .line 216
    :goto_4f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcn/kuaipan/android/http/g;->q:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v2

    :goto_5d
    return-object p1
.end method

.method private static a(Lorg/apache/http/HttpMessage;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;)V
    .registers 11

    .line 148
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v0, :cond_1a

    .line 149
    check-cast p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 150
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 152
    new-instance v6, Lcn/kuaipan/android/http/k;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/k;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V

    invoke-virtual {p0, v6}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_33

    .line 154
    :cond_1a
    instance-of v0, p0, Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_33

    .line 155
    check-cast p0, Lorg/apache/http/HttpResponse;

    .line 156
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 158
    new-instance v6, Lcn/kuaipan/android/http/k;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/k;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V

    invoke-interface {p0, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private static a(Ljava/util/List;)[Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/HttpMessage;",
            ">;)[",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpMessage;

    .line 170
    instance-of v2, v1, Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_d

    .line 171
    check-cast v1, Lorg/apache/http/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 174
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/http/HttpResponse;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/http/HttpResponse;

    return-object p0
.end method

.method private b(Ljava/util/List;)[Lorg/apache/http/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/HttpMessage;",
            ">;)[",
            "Lorg/apache/http/HttpRequest;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 182
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpMessage;

    .line 184
    instance-of v2, v1, Lorg/apache/http/HttpRequest;

    if-eqz v2, :cond_d

    .line 185
    check-cast v1, Lorg/apache/http/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 188
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/http/HttpRequest;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/http/HttpRequest;

    return-object p1
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .line 69
    iget-object v0, p0, Lcn/kuaipan/android/http/g;->m:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcn/kuaipan/android/http/KscHttpRequest;I)Lcn/kuaipan/android/http/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Lcn/kuaipan/android/http/g;->a(Lcn/kuaipan/android/http/KscHttpRequest;ILcn/kuaipan/android/http/KssTransferStopper;)Lcn/kuaipan/android/http/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcn/kuaipan/android/http/KscHttpRequest;ILcn/kuaipan/android/http/KssTransferStopper;)Lcn/kuaipan/android/http/f;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    if-nez p3, :cond_a

    .line 86
    sget-object v0, Lcn/kuaipan/android/b;->b:Lcn/kuaipan/android/http/KssTransferStopper;

    move-object v3, v0

    goto :goto_c

    :cond_a
    move-object/from16 v3, p3

    .line 89
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->f()Lcn/kuaipan/android/http/IKscTransferListener;

    move-result-object v4

    .line 90
    new-instance v5, Lcn/kuaipan/android/http/f;

    iget-object v0, v1, Lcn/kuaipan/android/http/g;->p:Lcn/kuaipan/android/http/j;

    invoke-direct {v5, v0}, Lcn/kuaipan/android/http/f;-><init>(Lcn/kuaipan/android/http/j;)V

    .line 91
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 95
    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    .line 96
    invoke-virtual {v5, v6}, Lcn/kuaipan/android/http/f;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 98
    invoke-direct {v1, v2}, Lcn/kuaipan/android/http/g;->a(I)Lorg/apache/http/client/HttpClient;

    move-result-object v7

    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_36

    .line 99
    iget-object v8, v1, Lcn/kuaipan/android/http/g;->s:Lcn/kuaipan/android/http/client/e;

    if-eqz v8, :cond_36

    const-string v8, "ksc.connect_redirector"

    .line 100
    iget-object v9, v1, Lcn/kuaipan/android/http/g;->s:Lcn/kuaipan/android/http/client/e;

    invoke-interface {v0, v8, v9}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v8

    invoke-static {v8}, Lcn/kuaipan/android/http/g;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v8

    .line 104
    iget-object v9, v1, Lcn/kuaipan/android/http/g;->n:Lcn/kuaipan/android/http/h;

    invoke-virtual {v9, v8}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;)Lcn/kuaipan/android/http/i;

    move-result-object v10

    .line 105
    iget-object v9, v1, Lcn/kuaipan/android/http/g;->o:Lcn/kuaipan/android/http/h;

    invoke-virtual {v9, v8}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;)Lcn/kuaipan/android/http/i;

    move-result-object v8

    .line 107
    invoke-static {v6, v10, v4, v3}, Lcn/kuaipan/android/http/g;->a(Lorg/apache/http/HttpMessage;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;)V

    .line 109
    invoke-static {}, Lcn/kuaipan/android/http/h;->a()J

    move-result-wide v17

    .line 110
    invoke-interface {v7, v6, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 111
    invoke-static {}, Lcn/kuaipan/android/http/h;->a()J

    move-result-wide v19

    const-string v7, "ksc.message_list"

    .line 112
    invoke-interface {v0, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    instance-of v7, v0, Ljava/util/List;
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_61} :catch_b0

    const/4 v9, 0x0

    if-eqz v7, :cond_a2

    .line 115
    :try_start_64
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_71

    .line 116
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_71

    .line 117
    invoke-virtual {v5, v0}, Lcn/kuaipan/android/http/f;->a(Ljava/util/List;)V

    .line 120
    :cond_71
    invoke-direct {v1, v0}, Lcn/kuaipan/android/http/g;->b(Ljava/util/List;)[Lorg/apache/http/HttpRequest;

    move-result-object v7

    invoke-static {v7}, Lcn/kuaipan/android/utils/d;->a([Lorg/apache/http/HttpRequest;)J

    move-result-wide v15

    .line 121
    invoke-static {v0}, Lcn/kuaipan/android/http/g;->a(Ljava/util/List;)[Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcn/kuaipan/android/utils/d;->a([Lorg/apache/http/HttpResponse;)J

    move-result-wide v11

    .line 122
    invoke-static {v6, v9}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpResponse;Z)J

    move-result-wide v13

    const/4 v0, 0x0

    add-long v21, v11, v13

    move-wide/from16 v11, v17

    move-wide/from16 v13, v19

    .line 124
    invoke-virtual/range {v10 .. v16}, Lcn/kuaipan/android/http/i;->a(JJJ)V

    move-object v11, v8

    move-wide/from16 v12, v17

    move-wide/from16 v14, v19

    move-wide/from16 v16, v21

    .line 125
    invoke-virtual/range {v11 .. v17}, Lcn/kuaipan/android/http/i;->a(JJJ)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_99} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_99} :catch_b0

    goto :goto_a2

    :catch_9a
    move-exception v0

    :try_start_9b
    const-string v7, "KscHttpTransmitter"

    const-string v10, "Failed get requestList from context."

    .line 127
    invoke-static {v7, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_a2
    :goto_a2
    invoke-static {v6, v8, v4, v3}, Lcn/kuaipan/android/http/g;->a(Lorg/apache/http/HttpMessage;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;)V

    and-int/lit8 v0, v2, 0x4

    if-nez v0, :cond_aa

    const/4 v9, 0x1

    :cond_aa
    move-object/from16 v2, p1

    .line 132
    invoke-virtual {v5, v2, v6, v9}, Lcn/kuaipan/android/http/f;->a(Lcn/kuaipan/android/http/KscHttpRequest;Lorg/apache/http/HttpResponse;Z)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_af} :catch_b0

    goto :goto_be

    :catch_b0
    move-exception v0

    .line 135
    invoke-static {v0}, Lcn/kuaipan/android/a/b;->e(Ljava/lang/Throwable;)V

    const-string v2, "KscHttpTransmitter"

    const-string v3, "Meet exception when execute a KscHttpRequest."

    .line 136
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-virtual {v5, v0}, Lcn/kuaipan/android/http/f;->a(Ljava/lang/Throwable;)V

    :goto_be
    return-object v5
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcn/kuaipan/android/http/g;->r:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcn/kuaipan/android/http/g;->q:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_1e

    .line 195
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    .line 196
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/apache/http/client/HttpClient;

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public a(Lcn/kuaipan/android/http/client/e;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcn/kuaipan/android/http/g;->s:Lcn/kuaipan/android/http/client/e;

    return-void
.end method

.method public b()Lcn/kuaipan/android/http/h;
    .registers 2

    .line 225
    iget-object v0, p0, Lcn/kuaipan/android/http/g;->n:Lcn/kuaipan/android/http/h;

    return-object v0
.end method

.method public c()Lcn/kuaipan/android/http/h;
    .registers 2

    .line 229
    iget-object v0, p0, Lcn/kuaipan/android/http/g;->o:Lcn/kuaipan/android/http/h;

    return-object v0
.end method
