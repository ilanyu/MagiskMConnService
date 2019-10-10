.class public Lcom/android/volley/toolbox/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool$1;

    invoke-direct {v0}, Lcom/android/volley/toolbox/ByteArrayPool$1;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/f;->b:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/volley/toolbox/f;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/volley/toolbox/f;->d:I

    .line 78
    iput p1, p0, Lcom/android/volley/toolbox/f;->e:I

    return-void
.end method

.method private declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 124
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/android/volley/toolbox/f;->d:I

    iget v1, p0, Lcom/android/volley/toolbox/f;->e:I

    if-le v0, v1, :cond_1c

    .line 125
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 126
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    iget v1, p0, Lcom/android/volley/toolbox/f;->d:I

    array-length v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/volley/toolbox/f;->d:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    goto :goto_1

    .line 129
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    .line 123
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a([B)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_2e

    .line 109
    :try_start_3
    array-length v0, p1

    iget v1, p0, Lcom/android/volley/toolbox/f;->e:I

    if-le v0, v1, :cond_9

    goto :goto_2e

    .line 112
    :cond_9
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->c:Ljava/util/List;

    sget-object v1, Lcom/android/volley/toolbox/f;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1b

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 117
    :cond_1b
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->c:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 118
    iget v0, p0, Lcom/android/volley/toolbox/f;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/volley/toolbox/f;->d:I

    .line 119
    invoke-direct {p0}, Lcom/android/volley/toolbox/f;->a()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 120
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    .line 108
    monitor-exit p0

    throw p1

    .line 110
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(I)[B
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 90
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 91
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 92
    array-length v2, v1

    if-lt v2, p1, :cond_27

    .line 93
    iget p1, p0, Lcom/android/volley/toolbox/f;->d:I

    array-length v2, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/volley/toolbox/f;->d:I

    .line 94
    iget-object p1, p0, Lcom/android/volley/toolbox/f;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/android/volley/toolbox/f;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_2e

    .line 96
    monitor-exit p0

    return-object v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 99
    :cond_2a
    :try_start_2a
    new-array p1, p1, [B
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object p1

    :catchall_2e
    move-exception p1

    .line 89
    monitor-exit p0

    throw p1
.end method
