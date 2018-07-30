﻿using System;
using System.Collections.Generic;

namespace Gadi.Business.Models
{
    public class ValidationResult
    {
        public bool Succeeded { get; set; }
        public IEnumerable<string> Errors { get; set; }
        public Exception Exception { get; set; }
        public string Message { get; set; }
    }

    public class ValidationResult<T> : ValidationResult where T : class
    {
        public T Entity { get; set; }
    }

}
