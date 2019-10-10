.class public La/a/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:La/a/a/e/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    sget v0, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    sput v0, La/a/a/e/f;->a:I

    .line 13
    sget v0, La/a/a/e/f;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    .line 14
    new-instance v0, La/a/a/e/h;

    invoke-direct {v0}, La/a/a/e/h;-><init>()V

    sput-object v0, La/a/a/e/f;->b:La/a/a/e/a;

    goto :goto_19

    .line 16
    :cond_12
    new-instance v0, La/a/a/e/g;

    invoke-direct {v0}, La/a/a/e/g;-><init>()V

    sput-object v0, La/a/a/e/f;->b:La/a/a/e/a;

    :goto_19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 21
    sget-object v0, La/a/a/e/f;->b:La/a/a/e/a;

    invoke-interface {v0, p0}, La/a/a/e/a;->a(Landroid/content/Context;)V

    return-void
.end method
