.class public final Landroid/support/v4/text/ICUCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 55
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    goto :goto_21

    :cond_e
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    .line 57
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    goto :goto_21

    .line 59
    :cond_1a
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    :goto_21
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    .line 87
    sget-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/text/ICUCompat$ICUCompatImpl;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
