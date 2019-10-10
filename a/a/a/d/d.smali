.class public La/a/a/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:La/a/a/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    sget v0, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    sput v0, La/a/a/d/d;->a:I

    .line 16
    sget v0, La/a/a/d/d;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    .line 17
    new-instance v0, La/a/a/d/f;

    invoke-direct {v0}, La/a/a/d/f;-><init>()V

    sput-object v0, La/a/a/d/d;->b:La/a/a/d/a;

    goto :goto_19

    .line 19
    :cond_12
    new-instance v0, La/a/a/d/e;

    invoke-direct {v0}, La/a/a/d/e;-><init>()V

    sput-object v0, La/a/a/d/d;->b:La/a/a/d/a;

    :goto_19
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .line 24
    sget-object v0, La/a/a/d/d;->b:La/a/a/d/a;

    invoke-interface {v0, p0}, La/a/a/d/a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
