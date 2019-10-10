.class public La/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:La/a/a/b/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget v0, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_10

    .line 14
    invoke-static {p1}, La/a/a/b/c;->a(Landroid/content/Context;)La/a/a/b/c;

    move-result-object p1

    iput-object p1, p0, La/a/a/b/a;->a:La/a/a/b/d;

    goto :goto_16

    .line 16
    :cond_10
    invoke-static {p1}, La/a/a/b/b;->a(Landroid/content/Context;)La/a/a/b/b;

    move-result-object p1

    iput-object p1, p0, La/a/a/b/a;->a:La/a/a/b/d;

    :goto_16
    return-void
.end method

.method public static a(Landroid/content/Context;)La/a/a/b/a;
    .registers 2

    .line 21
    new-instance v0, La/a/a/b/a;

    invoke-direct {v0, p0}, La/a/a/b/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 29
    iget-object v0, p0, La/a/a/b/a;->a:La/a/a/b/d;

    invoke-interface {v0}, La/a/a/b/d;->a()V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 25
    iget-object v0, p0, La/a/a/b/a;->a:La/a/a/b/d;

    invoke-interface {v0, p1}, La/a/a/b/d;->a(Z)V

    return-void
.end method
