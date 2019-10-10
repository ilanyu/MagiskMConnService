.class public Lcn/kuaipan/android/http/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "net_cache"

.field private static final b:Ljava/lang/String; = "%08d.tmp"

.field private static final c:Lcn/kuaipan/android/utils/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcn/kuaipan/android/http/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;-><init>()V

    sput-object v0, Lcn/kuaipan/android/http/j;->c:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcn/kuaipan/android/http/j;->h:I

    if-eqz p1, :cond_23

    .line 48
    iput-object p1, p0, Lcn/kuaipan/android/http/j;->d:Landroid/content/Context;

    .line 49
    iput-boolean p2, p0, Lcn/kuaipan/android/http/j;->e:Z

    .line 50
    iput-object p3, p0, Lcn/kuaipan/android/http/j;->f:Ljava/lang/String;

    .line 52
    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/kuaipan/android/http/j;->g:Ljava/lang/String;

    .line 55
    new-instance p2, Lcn/kuaipan/android/http/NetCacheManager$1;

    invoke-direct {p2, p0, p1}, Lcn/kuaipan/android/http/NetCacheManager$1;-><init>(Lcn/kuaipan/android/http/j;Ljava/io/File;)V

    .line 59
    invoke-virtual {p2}, Lcn/kuaipan/android/http/NetCacheManager$1;->start()V

    :cond_22
    return-void

    .line 46
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcn/kuaipan/android/http/j;
    .registers 4

    const-class v0, Lcn/kuaipan/android/http/j;

    monitor-enter v0

    const/4 v1, 0x0

    .line 20
    :try_start_4
    invoke-static {p0, p1, v1}, Lcn/kuaipan/android/http/j;->a(Landroid/content/Context;ZLjava/lang/String;)Lcn/kuaipan/android/http/j;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZLjava/lang/String;)Lcn/kuaipan/android/http/j;
    .registers 6

    const-class v0, Lcn/kuaipan/android/http/j;

    monitor-enter v0

    .line 25
    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p2, "net_cache"

    .line 28
    :cond_b
    sget-object v1, Lcn/kuaipan/android/http/j;->c:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuaipan/android/http/j;

    if-nez v1, :cond_27

    .line 31
    new-instance v1, Lcn/kuaipan/android/http/j;

    invoke-direct {v1, p0, p1, p2}, Lcn/kuaipan/android/http/j;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 32
    sget-object p0, Lcn/kuaipan/android/http/j;->c:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 34
    :cond_27
    monitor-exit v0

    return-object v1

    :catchall_29
    move-exception p0

    .line 24
    monitor-exit v0

    throw p0
.end method

.method private b()Ljava/io/File;
    .registers 5

    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    iget v0, p0, Lcn/kuaipan/android/http/j;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/kuaipan/android/http/j;->h:I

    .line 77
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_38

    const-string v2, "%08d.tmp"

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcn/kuaipan/android/http/j;->d:Landroid/content/Context;

    iget-object v2, p0, Lcn/kuaipan/android/http/j;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/kuaipan/android/http/j;->e:Z

    invoke-static {v1, v2, v3}, Lcn/kuaipan/android/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuaipan/android/http/j;->g:Ljava/lang/String;

    .line 84
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 81
    :cond_2f
    new-instance v0, Lcn/kuaipan/android/a/f;

    const v1, 0x7a124

    invoke-direct {v0, v1}, Lcn/kuaipan/android/a/f;-><init>(I)V

    throw v0

    :catchall_38
    move-exception v0

    .line 77
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 3

    .line 66
    :cond_0
    invoke-direct {p0}, Lcn/kuaipan/android/http/j;->b()Ljava/io/File;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 88
    iget-object v0, p0, Lcn/kuaipan/android/http/j;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_13

    .line 91
    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :cond_13
    :goto_13
    return-void
.end method
