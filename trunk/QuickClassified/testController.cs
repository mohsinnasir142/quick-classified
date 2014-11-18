using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace QuickClassified
{
    public class testController : ApiController
    {
        // GET api/<controller>
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        //// GET api/<controller>/5
        //// api/test?id=23
        //public string Get(int id)
        //{
        //    return "value";
        //}
        //// test?name="asd"
        //public string Get(string name)
        //{
        //    return "name is KAMZ";
        //}

        //// POST api/<controller>
        //public void Post([FromBody]string value)
        //{
        //}

        //// PUT api/<controller>/5
        //public void Put(int id, [FromBody]string value)
        //{
        //}

        //// DELETE api/<controller>/5
        //public void Delete(int id)
        //{
        //}
        [HttpGet]
        public string getDataFromID(int id) {
            return "id is " + id;
        }
        
    }
}