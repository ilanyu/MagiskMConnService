.class public Lcn/kuaipan/android/http/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0xe10

.field private static final b:I = 0x12c

.field private static final c:I = 0x258

.field private static final d:I = 0x36ee80

.field private static final e:J = 0x493e0L


# instance fields
.field private final f:I

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:J


# direct methods
.method constructor <init>(I)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcn/kuaipan/android/http/h;->h:J

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/http/h;->g:Ljava/util/HashMap;

    if-gez p1, :cond_12

    const/16 p1, 0x258

    :cond_12
    const/16 v0, 0xe10

    const/16 v1, 0x12c

    .line 29
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 28
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcn/kuaipan/android/http/h;->f:I

    return-void
.end method

.method private static a(J)I
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 230
    div-long/2addr p0, v0

    const-wide/32 v0, 0x36ee80

    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static a()J
    .registers 2

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Landroid/util/SparseArray;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    if-ge p2, p1, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    .line 115
    :goto_b
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v2, :cond_25

    :goto_11
    if-ge v1, v3, :cond_3d

    .line 118
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-le v2, p2, :cond_1b

    if-lt v2, p1, :cond_22

    .line 120
    :cond_1b
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    :goto_25
    if-ge v1, v3, :cond_3d

    .line 125
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-gt v2, p2, :cond_37

    if-lt v2, p1, :cond_37

    .line 127
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_37
    if-le v2, p2, :cond_3a

    goto :goto_3d

    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method private a(Ljava/lang/String;IF)V
    .registers 6

    .line 250
    iget-object v0, p0, Lcn/kuaipan/android/http/h;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    .line 252
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 253
    iget-object v1, p0, Lcn/kuaipan/android/http/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const/4 v1, 0x0

    .line 255
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p3

    .line 256
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    :cond_31
    return-void
.end method

.method private a(Ljava/lang/String;IIF)V
    .registers 6

    if-lt p3, p2, :cond_a

    :goto_2
    if-gt p2, p3, :cond_1e

    .line 236
    invoke-direct {p0, p1, p2, p4}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_a
    :goto_a
    const v0, 0x36ee80

    if-ge p2, v0, :cond_15

    .line 240
    invoke-direct {p0, p1, p2, p4}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_15
    const/4 p2, 0x0

    :goto_16
    if-gt p2, p3, :cond_1e

    .line 244
    invoke-direct {p0, p1, p2, p4}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_1e
    return-void
.end method

.method private b()V
    .registers 13

    .line 179
    invoke-static {}, Lcn/kuaipan/android/http/h;->a()J

    move-result-wide v0

    .line 180
    iget-wide v2, p0, Lcn/kuaipan/android/http/h;->h:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_10

    return-void

    .line 184
    :cond_10
    invoke-static {v0, v1}, Lcn/kuaipan/android/http/h;->a(J)I

    move-result v2

    .line 185
    iget v3, p0, Lcn/kuaipan/android/http/h;->f:I

    sub-int v3, v2, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1d

    const/4 v5, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    .line 188
    :goto_1e
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 190
    iget-object v7, p0, Lcn/kuaipan/android/http/h;->g:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2d
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 192
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-eqz v5, :cond_60

    const/4 v10, 0x0

    .line 196
    :goto_48
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_77

    .line 197
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-le v11, v2, :cond_5a

    if-ge v11, v3, :cond_5a

    .line 199
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_48

    :cond_5a
    if-lt v11, v3, :cond_5d

    goto :goto_77

    :cond_5d
    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    :cond_60
    const/4 v10, 0x0

    .line 208
    :goto_61
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_77

    .line 209
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-gt v11, v2, :cond_73

    if-ge v11, v3, :cond_70

    goto :goto_73

    :cond_70
    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    .line 211
    :cond_73
    :goto_73
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_61

    .line 218
    :cond_77
    :goto_77
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_2d

    .line 219
    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 223
    :cond_81
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcn/kuaipan/android/http/h;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    .line 226
    :cond_97
    iput-wide v0, p0, Lcn/kuaipan/android/http/h;->h:J

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, p1, v1}, Lcn/kuaipan/android/http/h;->b(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, p2, v0}, Lcn/kuaipan/android/http/h;->b(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public declared-synchronized a(Ljava/lang/String;II)I
    .registers 8

    monitor-enter p0

    .line 37
    :try_start_1
    iget v0, p0, Lcn/kuaipan/android/http/h;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_57

    if-lt p3, v0, :cond_8

    const/4 p1, -0x2

    .line 38
    monitor-exit p0

    return p1

    .line 40
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcn/kuaipan/android/http/h;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    const/4 v0, -0x1

    if-eqz p1, :cond_55

    .line 41
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1a

    goto :goto_55

    .line 45
    :cond_1a
    invoke-static {}, Lcn/kuaipan/android/http/h;->a()J

    move-result-wide v1

    .line 46
    iget v3, p0, Lcn/kuaipan/android/http/h;->f:I

    sub-int/2addr v3, p3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 48
    invoke-static {v1, v2}, Lcn/kuaipan/android/http/h;->a(J)I

    move-result v1

    sub-int/2addr v1, p3

    sub-int p2, v1, p2

    .line 52
    invoke-static {p1, p2, v1}, Lcn/kuaipan/android/http/h;->a(Landroid/util/SparseArray;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_53

    :cond_39
    const/4 p2, 0x0

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    .line 59
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_57

    add-float/2addr p2, p3

    goto :goto_3e

    :cond_50
    float-to-int p1, p2

    .line 61
    monitor-exit p0

    return p1

    .line 54
    :cond_53
    :goto_53
    monitor-exit p0

    return v0

    .line 42
    :cond_55
    :goto_55
    monitor-exit p0

    return v0

    :catchall_57
    move-exception p1

    .line 36
    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcn/kuaipan/android/http/i;
    .registers 3

    .line 33
    new-instance v0, Lcn/kuaipan/android/http/i;

    invoke-direct {v0, p0, p1}, Lcn/kuaipan/android/http/i;-><init>(Lcn/kuaipan/android/http/h;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;JJF)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v4, p6

    monitor-enter p0

    cmp-long v5, p4, p2

    if-ltz v5, :cond_83

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_11

    goto :goto_83

    :cond_11
    const-wide/16 v5, 0x3e8

    .line 142
    :try_start_13
    div-long v7, p2, v5

    .line 143
    div-long v9, p4, v5

    cmp-long v11, v9, v7

    if-nez v11, :cond_23

    .line 145
    invoke-static/range {p2 .. p3}, Lcn/kuaipan/android/http/h;->a(J)I

    move-result v2

    .line 146
    invoke-direct {v1, v0, v2, v4}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    goto :goto_7b

    :cond_23
    const/4 v11, 0x0

    sub-long/2addr v9, v7

    const-wide/16 v7, 0x1

    cmp-long v11, v9, v7

    if-gtz v11, :cond_4c

    sub-long v7, p4, p2

    .line 149
    rem-long v9, p2, v5

    const/4 v11, 0x0

    sub-long v9, v5, v9

    long-to-float v9, v9

    mul-float v9, v9, v4

    long-to-float v7, v7

    div-float/2addr v9, v7

    .line 150
    rem-long v5, p4, v5

    long-to-float v5, v5

    mul-float v4, v4, v5

    div-float/2addr v4, v7

    .line 152
    invoke-static/range {p2 .. p3}, Lcn/kuaipan/android/http/h;->a(J)I

    move-result v2

    .line 153
    invoke-static/range {p4 .. p5}, Lcn/kuaipan/android/http/h;->a(J)I

    move-result v3

    .line 155
    invoke-direct {v1, v0, v2, v9}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    .line 156
    invoke-direct {v1, v0, v3, v4}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    goto :goto_7b

    :cond_4c
    const/4 v11, 0x0

    sub-long v11, p4, p2

    .line 159
    rem-long v13, p2, v5

    const/4 v15, 0x0

    sub-long v7, v5, v13

    long-to-float v7, v7

    mul-float v7, v7, v4

    long-to-float v8, v11

    div-float/2addr v7, v8

    .line 160
    rem-long v5, p4, v5

    long-to-float v5, v5

    mul-float v5, v5, v4

    div-float/2addr v5, v8

    sub-float/2addr v4, v7

    sub-float/2addr v4, v5

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-float v6, v9

    div-float/2addr v4, v6

    .line 163
    invoke-static/range {p2 .. p3}, Lcn/kuaipan/android/http/h;->a(J)I

    move-result v2

    .line 164
    invoke-static/range {p4 .. p5}, Lcn/kuaipan/android/http/h;->a(J)I

    move-result v3

    .line 166
    invoke-direct {v1, v0, v2, v7}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    .line 167
    invoke-direct {v1, v0, v3, v5}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IF)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 172
    invoke-direct {v1, v0, v2, v3, v4}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;IIF)V

    .line 175
    :goto_7b
    invoke-direct/range {p0 .. p0}, Lcn/kuaipan/android/http/h;->b()V
    :try_end_7e
    .catchall {:try_start_13 .. :try_end_7e} :catchall_80

    .line 176
    monitor-exit p0

    return-void

    :catchall_80
    move-exception v0

    .line 137
    monitor-exit p0

    throw v0

    .line 139
    :cond_83
    :goto_83
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;II)I
    .registers 8

    monitor-enter p0

    .line 83
    :try_start_1
    iget v0, p0, Lcn/kuaipan/android/http/h;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5d

    if-lt p3, v0, :cond_8

    const/4 p1, -0x2

    .line 84
    monitor-exit p0

    return p1

    .line 86
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcn/kuaipan/android/http/h;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    const/4 v0, -0x1

    if-eqz p1, :cond_5b

    .line 87
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1a

    goto :goto_5b

    .line 91
    :cond_1a
    invoke-static {}, Lcn/kuaipan/android/http/h;->a()J

    move-result-wide v1

    .line 92
    iget v3, p0, Lcn/kuaipan/android/http/h;->f:I

    sub-int/2addr v3, p3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 94
    invoke-static {v1, v2}, Lcn/kuaipan/android/http/h;->a(J)I

    move-result v1

    sub-int/2addr v1, p3

    sub-int p2, v1, p2

    .line 98
    invoke-static {p1, p2, v1}, Lcn/kuaipan/android/http/h;->a(Landroid/util/SparseArray;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 99
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_59

    .line 103
    :cond_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_5d

    add-float/2addr p3, v0

    goto :goto_42

    :cond_54
    int-to-float p1, p2

    div-float/2addr p3, p1

    float-to-int p1, p3

    .line 108
    monitor-exit p0

    return p1

    .line 100
    :cond_59
    :goto_59
    monitor-exit p0

    return v0

    .line 88
    :cond_5b
    :goto_5b
    monitor-exit p0

    return v0

    :catchall_5d
    move-exception p1

    .line 82
    monitor-exit p0

    throw p1
.end method
