.class public Lcn/kuaipan/android/kss/download/LoadMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;,
        Lcn/kuaipan/android/kss/download/LoadMap$Space;,
        Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LoadMap"

.field private static final b:I = 0x2

.field private static final c:I = 0x10000

.field private static final d:Ljava/lang/String; = "blocks"

.field private static final e:Ljava/lang/String; = "block_start"

.field private static final f:Ljava/lang/String; = "block_end"

.field private static final g:Ljava/lang/String; = "space_info"


# instance fields
.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/kuaipan/android/kss/download/LoadMap$Space;",
            "Lcn/kuaipan/android/kss/download/d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/kuaipan/android/kss/download/LoadMap$Space;",
            ">;"
        }
    .end annotation
.end field

.field private final j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

.field private k:Lcn/kuaipan/android/http/IKscTransferListener;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/IKssDownloadRequestResult;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .registers 10

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->h:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    .line 44
    invoke-interface {p1}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->e()I

    move-result v0

    .line 45
    new-array v1, v0, [Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_3e

    .line 49
    invoke-interface {p1, v3}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->a(I)Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    move-result-object v4

    .line 51
    new-instance v5, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    invoke-direct {v5, p0, v4, v1, v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;J)V

    .line 52
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aput-object v5, v6, v3

    .line 54
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    iget-wide v4, v4, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->c:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 58
    :cond_3e
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz p2, :cond_49

    .line 60
    invoke-interface {p1}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->f()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcn/kuaipan/android/http/IKscTransferListener;->b(J)V

    :cond_49
    return-void
.end method

.method private d()Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .registers 8

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 167
    :goto_4
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 168
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 169
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_1e

    move v2, v3

    move-wide v0, v4

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_21
    if-ltz v2, :cond_2c

    .line 177
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .registers 9

    .line 201
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 202
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gez v7, :cond_d

    move-object v3, v4

    move-wide v1, v5

    goto :goto_d

    :cond_24
    return-object v3
.end method


# virtual methods
.method declared-synchronized a()Lcn/kuaipan/android/kss/download/d;
    .registers 6

    monitor-enter p0

    .line 96
    :try_start_1
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap;->d()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 98
    new-instance v1, Lcn/kuaipan/android/kss/download/d;

    invoke-direct {v1, p0, v0}, Lcn/kuaipan/android/kss/download/d;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$Space;)V

    .line 99
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_38

    .line 100
    monitor-exit p0

    return-object v1

    .line 103
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap;->e()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 104
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b()J

    move-result-wide v1

    const-wide/32 v3, 0x10000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_25

    goto :goto_35

    .line 108
    :cond_25
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->a(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v0

    .line 109
    new-instance v1, Lcn/kuaipan/android/kss/download/d;

    invoke-direct {v1, p0, v0}, Lcn/kuaipan/android/kss/download/d;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$Space;)V

    .line 110
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_38

    .line 111
    monitor-exit p0

    return-object v1

    :cond_35
    :goto_35
    const/4 v0, 0x0

    .line 105
    monitor-exit p0

    return-object v0

    :catchall_38
    move-exception v0

    .line 95
    monitor-exit p0

    throw v0
.end method

.method a(I)V
    .registers 7

    if-ltz p1, :cond_40

    .line 139
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v0, v0

    if-ge p1, v0, :cond_40

    .line 143
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object p1, v0, p1

    .line 144
    monitor-enter p1

    .line 145
    :try_start_c
    invoke-static {p1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2b

    aget-object v3, v0, v2

    .line 146
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/kuaipan/android/kss/download/d;

    if-eqz v4, :cond_23

    .line 148
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/d;->b()V

    .line 151
    :cond_23
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 154
    :cond_2b
    invoke-static {p1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)V

    .line 155
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    monitor-exit p1

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    throw v0

    .line 140
    :cond_40
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public a(J)V
    .registers 15

    .line 212
    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v0, v0

    .line 215
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_14

    .line 218
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v1, v2, v3}, Lcn/kuaipan/android/http/IKscTransferListener;->d(J)V

    :cond_14
    const/4 v1, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_5f

    .line 222
    iget-object v5, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v5, v5, v2

    .line 223
    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)V

    .line 224
    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v6

    const/4 v8, 0x0

    add-long/2addr v6, v3

    cmp-long v8, p1, v6

    if-ltz v8, :cond_43

    .line 226
    new-array v3, v1, [J

    invoke-virtual {v5, v3}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a([J)V

    .line 227
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v3, :cond_4e

    .line 228
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v8

    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v10

    const/4 v4, 0x0

    sub-long/2addr v8, v10

    invoke-interface {v3, v8, v9}, Lcn/kuaipan/android/http/IKscTransferListener;->f(J)V

    goto :goto_4e

    :cond_43
    const/4 v8, 0x2

    .line 235
    new-array v8, v8, [J

    aput-wide v3, v8, v1

    const/4 v3, 0x1

    aput-wide v6, v8, v3

    invoke-virtual {v5, v8}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a([J)V

    .line 239
    :cond_4e
    :goto_4e
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    move-wide v3, v6

    goto :goto_17

    .line 242
    :cond_5f
    monitor-exit p0

    return-void

    :catchall_61
    move-exception p1

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_61

    throw p1
.end method

.method a(Lcn/kuaipan/android/kss/download/b;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    :goto_1
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 77
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v1, v1, v0

    .line 78
    invoke-static {v1, p1, p2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;Lcn/kuaipan/android/kss/download/b;Z)Z

    move-result v2

    if-nez v2, :cond_25

    .line 79
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/kss/download/LoadMap;->a(I)V

    .line 80
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v2, :cond_25

    .line 81
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-static {v1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v3

    invoke-static {v1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcn/kuaipan/android/http/IKscTransferListener;->f(J)V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method

.method declared-synchronized a(Lcn/kuaipan/android/kss/download/d;)V
    .registers 3

    monitor-enter p0

    .line 120
    :try_start_1
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/d;->e()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1e

    if-nez v0, :cond_f

    .line 122
    monitor-exit p0

    return-void

    .line 125
    :cond_f
    :try_start_f
    invoke-static {p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1e

    if-eqz v0, :cond_17

    .line 126
    monitor-exit p0

    return-void

    .line 129
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1e

    .line 130
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    .line 119
    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/os/Bundle;)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "blocks"

    .line 251
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 254
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v2, v2

    if-eq v1, v2, :cond_1b

    const-string p1, "LoadMap"

    const-string v1, "Block count is wrong in kinfo, ignore saved map"

    .line 255
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_50

    .line 260
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "block_start"

    .line 261
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "block_end"

    .line 262
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 263
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v3, v3, v2

    .line 264
    invoke-static {v3}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_48

    invoke-static {v3}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-eqz v3, :cond_45

    goto :goto_48

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_48
    :goto_48
    const-string p1, "LoadMap"

    const-string v1, "Block start/ends is wrong in kinfo, ignore saved map"

    .line 265
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 271
    :cond_50
    monitor-enter p0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_51} :catch_b3

    .line 272
    :try_start_51
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 274
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_61

    .line 275
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v2, v3, v4}, Lcn/kuaipan/android/http/IKscTransferListener;->d(J)V

    :cond_61
    move-wide v5, v3

    const/4 v2, 0x0

    :goto_63
    if-ge v2, v1, :cond_a0

    .line 280
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 281
    iget-object v8, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v8, v8, v2

    .line 282
    invoke-static {v8}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)V

    const-string v9, "space_info"

    .line 283
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .line 284
    invoke-virtual {v8, v7}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a([J)V

    .line 285
    iget-object v7, p0, Lcn/kuaipan/android/kss/download/LoadMap;->i:Ljava/util/ArrayList;

    invoke-static {v8}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 287
    iget-object v7, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v7, :cond_9d

    .line 288
    invoke-static {v8}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v9

    invoke-static {v8}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v11

    const/4 v7, 0x0

    sub-long/2addr v9, v11

    invoke-static {v8}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v7

    const/4 v11, 0x0

    sub-long/2addr v9, v7

    add-long/2addr v5, v9

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 293
    :cond_a0
    iget-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz p1, :cond_ad

    cmp-long p1, v5, v3

    if-eqz p1, :cond_ad

    .line 294
    iget-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {p1, v5, v6}, Lcn/kuaipan/android/http/IKscTransferListener;->f(J)V

    .line 296
    :cond_ad
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_b0
    move-exception p1

    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_51 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw p1
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b3} :catch_b3

    :catch_b3
    const-string p1, "LoadMap"

    const-string v1, "Meet exception Block count is wrony in kinfo, ignore saved map"

    .line 299
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public b()J
    .registers 8

    .line 186
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_12

    aget-object v5, v0, v4

    .line 187
    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    return-wide v2
.end method

.method public b(J)J
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_33

    const-wide/16 v2, -0x1

    .line 553
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_28

    aget-object v7, v4, v6

    .line 554
    invoke-static {v7}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v8

    cmp-long v8, p1, v8

    if-ltz v8, :cond_25

    invoke-static {v7}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v8

    cmp-long v8, p1, v8

    if-gez v8, :cond_25

    .line 555
    invoke-static {v7}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v2

    goto :goto_28

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_28
    :goto_28
    cmp-long p1, v2, v0

    if-ltz p1, :cond_2d

    return-wide v2

    .line 560
    :cond_2d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 549
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoadMap"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public b(I)V
    .registers 5

    .line 193
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_a

    .line 194
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->k:Lcn/kuaipan/android/http/IKscTransferListener;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/http/IKscTransferListener;->f(J)V

    :cond_a
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 15

    if-nez p1, :cond_3

    return-void

    .line 309
    :cond_3
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v0, v0

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_5d

    .line 312
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v4, v4, v3

    .line 313
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "block_start"

    .line 314
    invoke-static {v4}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "block_end"

    .line 315
    invoke-static {v4}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 317
    invoke-static {v4}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)Ljava/util/ArrayList;

    move-result-object v4

    .line 318
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v7, v6, 0x2

    .line 320
    new-array v7, v7, [J

    const/4 v8, 0x0

    :goto_37
    if-ge v8, v6, :cond_52

    .line 322
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    mul-int/lit8 v10, v8, 0x2

    .line 324
    invoke-static {v9}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c(Lcn/kuaipan/android/kss/download/LoadMap$Space;)J

    move-result-wide v11

    aput-wide v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    .line 325
    invoke-static {v9}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d(Lcn/kuaipan/android/kss/download/LoadMap$Space;)J

    move-result-wide v11

    aput-wide v11, v7, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_52
    const-string v4, "space_info"

    .line 327
    invoke-virtual {v5, v4, v7}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 328
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_5d
    const-string v0, "blocks"

    .line 331
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public c()Z
    .registers 10

    .line 335
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    .line 336
    invoke-static {v4}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1d

    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a()Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1d
    :goto_1d
    return v2

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 345
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->j:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
