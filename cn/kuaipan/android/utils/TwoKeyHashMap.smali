.class public Lcn/kuaipan/android/utils/TwoKeyHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;,
        Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;,
        Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;,
        Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;,
        Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field static final a:F = 0.75f

.field static final b:I = 0x10


# instance fields
.field c:I

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<",
            "TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private j:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 54
    invoke-direct {p0, v0, v1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f400000    # 0.75f

    .line 63
    invoke-direct {p0, p1, v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c:I

    if-ltz p1, :cond_37

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2f

    .line 80
    iput p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->j:F

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_16

    add-int/lit8 p1, p1, -0x1

    :cond_16
    const/4 p2, 0x1

    if-lez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x1

    .line 84
    :goto_1b
    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    .line 85
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    int-to-float p1, p1

    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->j:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c:I

    .line 86
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    add-int/2addr p1, p2

    new-array p1, p1, [Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    return-void

    .line 78
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initialLoadFactor should be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initialCapacity should be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I
    .registers 1

    .line 34
    iget p0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    return p0
.end method

.method static synthetic a(Lcn/kuaipan/android/utils/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I
    .registers 1

    .line 34
    iget p0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    return p0
.end method

.method static synthetic b(Lcn/kuaipan/android/utils/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .registers 1

    .line 34
    iget-object p0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    return-object p0
.end method

.method static synthetic d(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I
    .registers 3

    .line 34
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    return v0
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<",
            "TE;TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    .line 460
    iget-object p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    aget-object p1, p1, p2

    return-object p1

    .line 463
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 464
    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    rem-int/2addr v1, v2

    .line 465
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v1, v2, v1

    :goto_1f
    if-eqz v1, :cond_3d

    .line 468
    iget v2, v1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->a:I

    if-ne v0, v2, :cond_3a

    invoke-virtual {v1}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v1}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    return-object v1

    .line 471
    :cond_3a
    iget-object v1, v1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_1f

    :cond_3d
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic e(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I
    .registers 3

    .line 34
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    return v0
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<",
            "TE;TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_23

    if-nez p2, :cond_23

    .line 479
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    .line 480
    iget-object p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object p2, p2, p1

    if-eqz p2, :cond_22

    .line 481
    iget-object p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object p2, p2, p1

    .line 482
    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aput-object v0, v1, p1

    .line 483
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    .line 484
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    return-object p2

    :cond_22
    return-object v0

    .line 490
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    .line 491
    iget v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    rem-int/2addr v2, v3

    .line 493
    iget-object v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v3, v3, v2

    move-object v4, v3

    :goto_38
    if-eqz v3, :cond_72

    .line 496
    iget v5, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->a:I

    if-ne v1, v5, :cond_6c

    invoke-virtual {v3}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-virtual {v3}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    if-ne v4, v3, :cond_5b

    .line 498
    iget-object p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object p2, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aput-object p2, p1, v2

    goto :goto_5f

    .line 500
    :cond_5b
    iget-object p1, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object p1, v4, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 502
    :goto_5f
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    .line 503
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    return-object v3

    .line 508
    :cond_6c
    iget-object v4, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_38

    :cond_72
    return-object v0
.end method


# virtual methods
.method a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TK;TV;",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<",
            "TE;TK;TV;>;)",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<",
            "TE;TK;TV;>;"
        }
    .end annotation

    .line 259
    new-instance v6, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;)V

    return-object v6
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 127
    iget-object p1, p1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->d:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_35

    if-nez p2, :cond_35

    .line 140
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    .line 141
    iget-object p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object p2, p2, p1

    if-nez p2, :cond_28

    .line 142
    iget-object p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object p3

    aput-object p3, p2, p1

    .line 143
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    .line 144
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    return-object v0

    .line 147
    :cond_28
    iget-object p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object p2, p2, p1

    iget-object p2, p2, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->d:Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object p1, v0, p1

    iput-object p3, p1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->d:Ljava/lang/Object;

    return-object p2

    .line 153
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v4, v1, v2

    const v1, 0x7fffffff

    and-int/2addr v1, v4

    .line 154
    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    rem-int/2addr v1, v2

    .line 155
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v2, v2, v1

    :goto_4a
    if-eqz v2, :cond_6c

    .line 158
    iget v3, v2, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->a:I

    if-ne v4, v3, :cond_69

    invoke-virtual {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 159
    iget-object p1, v2, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->d:Ljava/lang/Object;

    .line 160
    iput-object p3, v2, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->d:Ljava/lang/Object;

    return-object p1

    .line 163
    :cond_69
    iget-object v2, v2, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_4a

    .line 166
    :cond_6c
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v8, v3, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object p1

    aput-object p1, v2, v1

    .line 167
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    .line 168
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    .line 170
    iget p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    iget p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c:I

    if-le p1, p2, :cond_91

    .line 171
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->a()V

    :cond_91
    return-object v0
.end method

.method a()V
    .registers 9

    .line 181
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_d

    const v0, 0x7ffffffe

    :cond_d
    add-int/lit8 v1, v0, 0x1

    .line 185
    new-array v1, v1, [Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    const/4 v2, 0x0

    .line 187
    :goto_12
    iget-object v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const v4, 0x7fffffff

    if-ge v2, v3, :cond_33

    .line 188
    iget-object v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v3, v3, v2

    :goto_20
    if-eqz v3, :cond_30

    .line 190
    iget-object v5, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 192
    iget v6, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->a:I

    and-int/2addr v6, v4

    rem-int/2addr v6, v0

    .line 193
    aget-object v7, v1, v6

    iput-object v7, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 194
    aput-object v3, v1, v6

    move-object v3, v5

    goto :goto_20

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 199
    :cond_33
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 200
    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    .line 204
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    if-ne v0, v4, :cond_49

    .line 205
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->j:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v0, v0, v2

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->j:F

    .line 207
    :cond_49
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->g:I

    int-to-float v0, v0

    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->j:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c:I

    .line 208
    iput-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    return-void
.end method

.method b()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .line 268
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 216
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 229
    iget-object p1, p1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->d:Ljava/lang/Object;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method c()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 277
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    return-object v0
.end method

.method public clear()V
    .registers 5

    .line 113
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->h:I

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    .line 115
    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->i:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->d:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 104
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->d:Ljava/util/Set;

    .line 106
    :cond_b
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->d:Ljava/util/Set;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 238
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public size()I
    .registers 2

    .line 245
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->f:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->e:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 94
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->e:Ljava/util/Collection;

    .line 96
    :cond_b
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->e:Ljava/util/Collection;

    return-object v0
.end method
